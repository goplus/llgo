package main

import (
	"encoding/json"
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/goplus/llgo/x/io"
	"github.com/goplus/llgo/x/io/naive"
	"github.com/goplus/llgo/x/tuple"
)

// -----------------------------------------------------------------------------

func http(method string, url string, callback func(resp *Response, err error)) {
	go func() {
		body := ""
		if strings.HasPrefix(url, "http://example.com/user/") {
			name := url[len("http://example.com/user/"):]
			body = `{"name":"` + name + `"}`
		} else if strings.HasPrefix(url, "http://example.com/score/") {
			body = "99.5"
		}
		time.Sleep(200 * time.Millisecond)
		resp := &Response{StatusCode: 200, Body: body}
		callback(resp, nil)
	}()
}

// -----------------------------------------------------------------------------

type Response struct {
	StatusCode int

	Body string
}

func (r *Response) Text() (co *io.Promise[tuple.Tuple2[string, error]]) {
	co.Return(tuple.Tuple2[string, error]{V1: r.Body, V2: nil})
	return
}

func (r *Response) TextCompiled() *naive.PromiseImpl[tuple.Tuple2[string, error]] {
	co := &naive.PromiseImpl[tuple.Tuple2[string, error]]{}
	co.Debug = "Text"
	co.Func = func() {
		switch co.Next {
		case 0:
			co.Next = -1
			co.Return(tuple.Tuple2[string, error]{V1: r.Body, V2: nil})
			return
		default:
			panic("Promise already done")
		}
	}
	return co
}

//	async AsyncHttpGet(url string) (resp *Response, err error) {
//	  http("GET", url, func(resp *Response, err error) {
//	    return resp, err
//	  })
//	}
func AsyncHttpGet(url string) *io.Promise[tuple.Tuple2[*Response, error]] {
	co := &io.Promise[tuple.Tuple2[*Response, error]]{}
	http("GET", url, func(resp *Response, err error) {
		co.Return(tuple.Tuple2[*Response, error]{V1: resp, V2: nil})
	})
	co.Suspend()
	return co
}

func AsyncHttpGetCompiled(url string) *naive.PromiseImpl[tuple.Tuple2[*Response, error]] {
	co := &naive.PromiseImpl[tuple.Tuple2[*Response, error]]{}
	co.Debug = "HttpGet"
	co.Func = func() {
		switch co.Next {
		case 0:
			co.Next = -1
			http("GET", url, func(resp *Response, err error) {
				co.Return(tuple.Tuple2[*Response, error]{V1: resp, V2: nil})
			})
			co.Suspend()
			return
		default:
			panic("Promise already done")
		}
	}
	return co
}

func AsyncHttpPost(url string) *io.Promise[tuple.Tuple2[*Response, error]] {
	co := &io.Promise[tuple.Tuple2[*Response, error]]{}
	http("POST", url, func(resp *Response, err error) {
		co.Return(tuple.Tuple2[*Response, error]{V1: resp, V2: nil})
	})
	co.Suspend()
	return co
}

func AsyncHttpPostCompiled(url string) *naive.PromiseImpl[tuple.Tuple2[*Response, error]] {
	P := &naive.PromiseImpl[tuple.Tuple2[*Response, error]]{}
	P.Debug = "HttpPost"
	P.Func = func() {
		switch P.Next {
		case 0:
			P.Next = -1
			http("POST", url, func(resp *Response, err error) {
				P.Return(tuple.Tuple2[*Response, error]{V1: resp, V2: nil})
			})
			return
		default:
			panic("Promise already done")
		}
	}
	return P
}

// -----------------------------------------------------------------------------

type User struct {
	Name string
}

func GetUser(name string) (co *naive.PromiseImpl[tuple.Tuple2[User, error]]) {
	resp, err := AsyncHttpGet("http://example.com/user/" + name).Await().Values()
	if err != nil {
		// return User{}, err
		co.Return(tuple.Tuple2[User, error]{V1: User{}, V2: err})
		return
	}

	if resp.StatusCode != 200 {
		// return User{}, fmt.Errorf("http status code: %d", resp.StatusCode)
		co.Return(tuple.Tuple2[User, error]{V1: User{}, V2: fmt.Errorf("http status code: %d", resp.StatusCode)})
		return
	}

	body, err := resp.Text().Await().Values()
	if err != nil {
		// return User{}, err
		co.Return(tuple.Tuple2[User, error]{V1: User{}, V2: err})
		return
	}
	user := User{}
	if err := json.Unmarshal([]byte(body), &user); err != nil {
		// return User{}, err
		co.Return(tuple.Tuple2[User, error]{V1: User{}, V2: err})
		return
	}

	// return user, nil
	co.Return(tuple.Tuple2[User, error]{V1: user, V2: nil})
	return
}

func GetUserCompiled(name string) (co *naive.PromiseImpl[tuple.Tuple2[User, error]]) {
	var state1 *naive.PromiseImpl[tuple.Tuple2[*Response, error]]
	var state2 *naive.PromiseImpl[tuple.Tuple2[string, error]]

	co = &naive.PromiseImpl[tuple.Tuple2[User, error]]{}
	co.Debug = "GetUser"
	co.Func = func() {
		switch co.Next {
		case 0:
			co.Next = 1
			state1 = AsyncHttpGetCompiled("http://example.com/user/" + name)
			state1.Exec = co.Exec
			state1.Parent = co
			state1.Call()
			return
		case 1:
			co.Next = 2
			resp, err := state1.Value().Values()
			log.Printf("resp: %v, err: %v\n", resp, err)
			if err != nil {
				co.Return(tuple.Tuple2[User, error]{V1: User{}, V2: err})
				return
			}

			if resp.StatusCode != 200 {
				co.Return(tuple.Tuple2[User, error]{V1: User{}, V2: fmt.Errorf("http status code: %d", resp.StatusCode)})
				return
			}

			state2 = resp.TextCompiled()
			state2.Exec = co.Exec
			state2.Parent = co
			state2.Call()
			return
		case 2:
			co.Next = -1
			body, err := state2.Value().Values()
			if err != nil {
				co.Return(tuple.Tuple2[User, error]{V1: User{}, V2: err})
				return
			}
			user := User{}
			log.Printf("body: %v\n", body)
			if err := json.Unmarshal([]byte(body), &user); err != nil {
				co.Return(tuple.Tuple2[User, error]{V1: User{}, V2: err})
				return
			}

			log.Printf("resolve user: %+v\n", user)
			co.Return(tuple.Tuple2[User, error]{V1: user, V2: nil})
			return
		default:
			panic(fmt.Errorf("Promise already done, %+v", co))
		}
	}
	return
}

func GetScore() (co *naive.PromiseImpl[tuple.Tuple2[float64, error]]) {
	resp, err := AsyncHttpGet("http://example.com/score/").Await().Values()
	if err != nil {
		co.Return(tuple.Tuple2[float64, error]{V1: 0, V2: err})
		return
	}

	if resp.StatusCode != 200 {
		// return 0, fmt.Errorf("http status code: %d", resp.StatusCode)
		co.Return(tuple.Tuple2[float64, error]{V1: 0, V2: fmt.Errorf("http status code: %d", resp.StatusCode)})
		return
	}

	body, err := resp.Text().Await().Values()
	if err != nil {
		// return 0, err
		co.Return(tuple.Tuple2[float64, error]{V1: 0, V2: err})
		return
	}

	score := 0.0
	if _, err := fmt.Sscanf(body, "%f", &score); err != nil {
		// return 0, err
		co.Return(tuple.Tuple2[float64, error]{V1: 0, V2: err})
		return
	}

	// return score, nil
	co.Return(tuple.Tuple2[float64, error]{V1: score, V2: nil})
	return
}

func GetScoreCompiled() *naive.PromiseImpl[tuple.Tuple2[float64, error]] {
	var state1 *naive.PromiseImpl[tuple.Tuple2[*Response, error]]
	var state2 *naive.PromiseImpl[tuple.Tuple2[string, error]]

	co := &naive.PromiseImpl[tuple.Tuple2[float64, error]]{}
	co.Debug = "GetScore"
	co.Func = func() {
		switch co.Next {
		case 0:
			co.Next = 1
			state1 = AsyncHttpGetCompiled("http://example.com/score/")
			state1.Exec = co.Exec
			state1.Parent = co
			state1.Call()
			return
		case 1:
			co.Next = 2

			resp, err := state1.Value().Values()
			if err != nil {
				co.Return(tuple.Tuple2[float64, error]{V1: 0, V2: err})
				return
			}

			if resp.StatusCode != 200 {
				co.Return(tuple.Tuple2[float64, error]{V1: 0, V2: fmt.Errorf("http status code: %d", resp.StatusCode)})
				return
			}

			state2 = resp.TextCompiled()
			state2.Exec = co.Exec
			state2.Parent = co
			state2.Call()

			return
		case 2:
			co.Next = -1
			body, err := state2.Value().Values()
			if err != nil {
				co.Return(tuple.Tuple2[float64, error]{V1: 0, V2: err})
				return
			}

			score := 0.0
			if _, err := fmt.Sscanf(body, "%f", &score); err != nil {
				co.Return(tuple.Tuple2[float64, error]{V1: 0, V2: err})
				return
			}
			co.Return(tuple.Tuple2[float64, error]{V1: score, V2: nil})
			return
		default:
			panic("Promise already done")
		}
	}
	return co
}

func DoUpdate(op string) (co *naive.PromiseImpl[error]) {
	resp, err := AsyncHttpPost("http://example.com/update/" + op).Await().Values()
	if err != nil {
		co.Return(err)
		return
	}

	if resp.StatusCode != 200 {
		co.Return(fmt.Errorf("http status code: %d", resp.StatusCode))
	}

	co.Return(nil)
	return
}

func DoUpdateCompiled(op string) *naive.PromiseImpl[error] {
	var state1 *naive.PromiseImpl[tuple.Tuple2[*Response, error]]

	co := &naive.PromiseImpl[error]{}
	co.Debug = "DoUpdate"
	co.Func = func() {
		switch co.Next {
		case 0:
			co.Next = 1
			state1 = AsyncHttpPostCompiled("http://example.com/update/" + op)
			state1.Exec = co.Exec
			state1.Parent = co
			state1.Call()
			return
		case 1:
			co.Next = -1
			resp, err := state1.Value().Values()
			if err != nil {
				co.Return(err)
				return
			}

			if resp.StatusCode != 200 {
				co.Return(fmt.Errorf("http status code: %d", resp.StatusCode))
				return
			}

			co.Return(nil)
			return
		default:
			panic("Promise already done")
		}
	}
	return co
}

func GenInts() (co *naive.PromiseImpl[int]) {
	co.Yield(3)
	co.Yield(2)
	co.Yield(5)
	return
}

func GenIntsCompiled() *naive.PromiseImpl[int] {
	co := &naive.PromiseImpl[int]{}
	co.Debug = "GenInts"
	co.Func = func() {
		switch co.Next {
		case 0:
			co.Next = 1
			co.Yield(3)
			return
		case 1:
			co.Next = 2
			co.Yield(2)
			return
		case 2:
			co.Next = 3
			co.Yield(5)
			return
		case 3:
			co.Next = -1
		default:
			panic("Generator already done")
		}
	}
	return co
}

// Generator with async calls and panic
func GenUsers() (co *naive.PromiseImpl[User]) {
	u, err := GetUser("Alice").Await().Values()
	if err != nil {
		panic(err)
	}
	co.Yield(u)
	u, err = GetUser("Bob").Await().Values()
	if err != nil {
		panic(err)
	}
	co.Yield(u)
	u, err = GetUser("Cindy").Await().Values()
	if err != nil {
		panic(err)
	}
	co.Yield(u)
	log.Printf("genUsers done\n")
	return
}

func GenUsersCompiled() (resolve *naive.PromiseImpl[User]) {
	var state1, state2, state3 *naive.PromiseImpl[tuple.Tuple2[User, error]]

	co := &naive.PromiseImpl[User]{}
	co.Debug = "GenUsers"
	co.Func = func() {
		switch co.Next {
		case 0:
			co.Next = 1
			state1 = GetUserCompiled("Alice")
			state1.Exec = co.Exec
			state1.Parent = co
			state1.Call()
			return
		case 1:
			co.Next = 2
			u, err := state1.Value().Values()
			if err != nil {
				panic(err)
			} else {
				co.Yield(u)
			}
			return
		case 2:
			co.Next = 3
			state2 = GetUserCompiled("Bob")
			state2.Exec = co.Exec
			state2.Parent = co
			state2.Call()
			return
		case 3:
			co.Next = 4
			u, err := state2.Value().Values()
			if err != nil {
				panic(err)
			} else {
				co.Yield(u)
			}
			return
		case 4:
			co.Next = 5
			state3 = GetUserCompiled("Cindy")
			state3.Exec = co.Exec
			state3.Parent = co
			state3.Call()
			return
		case 5:
			co.Next = 6
			u, err := state3.Value().Values()
			if err != nil {
				panic(err)
			} else {
				co.Yield(u)
			}
			return
		case 6:
			co.Next = -1
		default:
			panic("Generator already done")
		}
	}
	return co
}

func Demo() (co *io.Promise[io.Void]) {
	user, err := GetUser("1").Await().Values()
	log.Println(user, err)

	user, err = naive.Race[tuple.Tuple2[User, error]](GetUser("2"), GetUser("3"), GetUser("4")).Value().Values()
	log.Println(user, err)

	users := naive.All[tuple.Tuple2[User, error]]([]naive.AsyncCall[tuple.Tuple2[User, error]]{GetUser("5"), GetUser("6"), GetUser("7")}).Value()
	log.Println(users, err)

	user, score, _ := naive.Await3Compiled[User, float64, io.Void](GetUser("8"), GetScore(), DoUpdate("update sth.")).Value().Values()
	log.Println(user, score, err)

	// for loop with generator
	g := GenInts()
	for {
		g.Call()
		if g.Done() {
			break
		}
		log.Println("genInt:", g.Value(), g.Done())
	}

	// for loop with async generator
	// for u, err := range GenUsers() {...}
	g1 := GenUsers()
	for {
		g1.Call()
		u := g1.Await()
		if g1.Done() {
			break
		}
		log.Println("genUser:", u, err)
	}

	// TODO(lijie): select from multiple promises without channel
	// select {
	// case user := <-GetUser("123").Chan():
	// 	log.Println("user:", user)
	// case score := <-GetScore().Chan():
	// 	log.Println("score:", score)
	// case <-io.Timeout(5 * time.Second).Chan():
	// 	log.Println("timeout")
	// }

	log.Println("Demo done")
	co.Return(io.Void{})
	return
}

func DemoCompiled() *naive.PromiseImpl[io.Void] {
	var state1 *naive.PromiseImpl[tuple.Tuple2[User, error]]
	var state2 *naive.PromiseImpl[tuple.Tuple2[User, error]]
	var state3 *naive.PromiseImpl[[]tuple.Tuple2[User, error]]
	var state4 *naive.PromiseImpl[tuple.Tuple3[tuple.Tuple2[User, error], tuple.Tuple2[float64, error], error]]
	var g1 *naive.PromiseImpl[int]
	var g2 *naive.PromiseImpl[User]

	P := &naive.PromiseImpl[io.Void]{}
	P.Debug = "Demo"
	P.Func = func() {
		switch P.Next {
		case 0:
			P.Next = 1
			state1 = GetUserCompiled("1")
			state1.Exec = P.Exec
			state1.Parent = P
			state1.Call()
			return
		case 1:
			P.Next = 2
			user, err := state1.Value().Values()
			log.Printf("user: %+v, err: %v\n", user, err)

			state2 = naive.Race[tuple.Tuple2[User, error]](GetUserCompiled("2"), GetUserCompiled("3"), GetUserCompiled("4"))
			state2.Exec = P.Exec
			state2.Parent = P
			state2.Call()
			return
		case 2:
			P.Next = 3
			user, err := state2.Value().Values()
			log.Printf("race user: %+v, err: %v\n", user, err)

			state3 = naive.All[tuple.Tuple2[User, error]]([]naive.AsyncCall[tuple.Tuple2[User, error]]{GetUserCompiled("5"), GetUserCompiled("6"), GetUserCompiled("7")})
			state3.Exec = P.Exec
			state3.Parent = P
			state3.Call()
			return
		case 3:

			P.Next = 4
			users := state3.Value()
			log.Println(users)

			state4 = naive.Await3Compiled[tuple.Tuple2[User, error], tuple.Tuple2[float64, error], error](GetUserCompiled("8"), GetScoreCompiled(), DoUpdateCompiled("update sth."))
			state4.Exec = P.Exec
			state4.Parent = P
			state4.Call()
			return
		case 4:
			P.Next = 5
			user, score, _ := state4.Value().Values()
			log.Println(user, score)

			g1 = GenIntsCompiled()
			for {
				g1.Call()
				if g1.Done() {
					break
				}

				log.Printf("genInt: %+v, done: %v\n", g1.Value(), g1.Done())
			}

			g2 = GenUsersCompiled()
			g2.Exec = P.Exec
			g2.Parent = P
			g2.Call()
			return
		case 5:
			g2.Call()
			if g2.Done() {
				P.Next = -1
				log.Printf("Demo done\n")
				P.Return(io.Void{})
				return
			}
			log.Printf("genUser: %+v, done: %v\n", g2.Value(), g2.Done())
			return
		default:
			panic("Promise already done")
		}
	}
	return P
}

func main() {
	log.SetFlags(log.Lshortfile | log.LstdFlags)
	log.Printf("=========== Run Naive Demo ===========\n")
	v := naive.RunImpl[io.Void](DemoCompiled())
	log.Println(v)
	log.Printf("=========== Run Naive Demo finished ===========\n")

	log.Printf("=========== Run Demo ===========\n")
	v1 := Demo()
	log.Println(v1)
	log.Printf("=========== Run Demo finished ===========\n")
}
