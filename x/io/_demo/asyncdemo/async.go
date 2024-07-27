package main

import (
	"encoding/json"
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/goplus/llgo/x/io"
)

// -----------------------------------------------------------------------------

type Response struct {
	StatusCode int

	Body string
}

func (r *Response) Text() (resolve io.Promise[string]) {
	// return r.Body, nil
	resolve(r.Body, nil)
	return
}

func (r *Response) TextCompiled() *io.PromiseImpl[string] {
	P := &io.PromiseImpl[string]{}
	P.Debug = "Text"
	P.Func = func(resolve func(string, error)) {
		switch P.Next {
		case 0:
			P.Next = -1
			resolve(r.Body, nil)
			return
		default:
			panic("Promise already done")
		}
	}
	return P
}

func Http(method string, url string, callback func(resp *Response, err error)) {
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

func AsyncHttpGet(url string) (resolve io.Promise[*Response]) {
	Http("GET", url, resolve)
	return
}

func AsyncHttpGetCompiled(url string) *io.PromiseImpl[*Response] {
	P := &io.PromiseImpl[*Response]{}
	P.Debug = "HttpGet"
	P.Func = func(resolve func(*Response, error)) {
		switch P.Next {
		case 0:
			P.Next = -1
			Http("GET", url, resolve)
			return
		default:
			panic("Promise already done")
		}
	}
	return P
}

func AsyncHttpPost(url string) (resolve io.Promise[*Response]) {
	Http("POST", url, resolve)
	return
}

func AsyncHttpPostCompiled(url string) *io.PromiseImpl[*Response] {
	P := &io.PromiseImpl[*Response]{}
	P.Debug = "HttpPost"
	P.Func = func(resolve func(*Response, error)) {
		switch P.Next {
		case 0:
			P.Next = -1
			Http("POST", url, resolve)
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

func GetUser(name string) (resolve io.Promise[User]) {
	resp, err := AsyncHttpGet("http://example.com/user/" + name).Await()
	if err != nil {
		// return User{}, err
		resolve(User{}, err)
		return
	}

	if resp.StatusCode != 200 {
		// return User{}, fmt.Errorf("http status code: %d", resp.StatusCode)
		resolve(User{}, fmt.Errorf("http status code: %d", resp.StatusCode))
		return
	}

	body, err := resp.Text().Await()
	if err != nil {
		// return User{}, err
		resolve(User{}, err)
		return
	}
	user := User{}
	if err := json.Unmarshal([]byte(body), &user); err != nil {
		// return User{}, err
		resolve(User{}, err)
		return
	}

	// return user, nil
	resolve(user, nil)
	return
}

func GetUserCompiled(name string) *io.PromiseImpl[User] {
	var state1 *io.PromiseImpl[*Response]
	var state2 *io.PromiseImpl[string]

	P := &io.PromiseImpl[User]{}
	P.Debug = "GetUser"
	P.Func = func(resolve func(User, error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			state1 = AsyncHttpGetCompiled("http://example.com/user/" + name)
			state1.Exec = P.Exec
			state1.Parent = P
			state1.Call()
			return
		case 1:
			P.Next = 2
			resp, err := state1.Value(), state1.Err()
			log.Printf("resp: %v, err: %v\n", resp, err)
			if err != nil {
				resolve(User{}, err)
				return
			}

			if resp.StatusCode != 200 {
				resolve(User{}, fmt.Errorf("http status code: %d", resp.StatusCode))
				return
			}

			state2 = resp.TextCompiled()
			state2.Exec = P.Exec
			state2.Parent = P
			state2.Call()
			return
		case 2:
			P.Next = -1
			body, err := state2.Value(), state2.Err()
			if err != nil {
				resolve(User{}, err)
				return
			}
			user := User{}
			log.Printf("body: %v\n", body)
			if err := json.Unmarshal([]byte(body), &user); err != nil {
				resolve(User{}, err)
				return
			}

			log.Printf("resolve user: %+v\n", user)
			resolve(user, nil)
			return
		default:
			panic(fmt.Sprintf("Promise already done, %+v", P))
		}
	}
	return P
}

func GetScore() (resolve io.Promise[float64]) {
	resp, err := AsyncHttpGet("http://example.com/score/").Await()
	if err != nil {
		// return 0, err
		resolve(0, err)
		return
	}

	if resp.StatusCode != 200 {
		// return 0, fmt.Errorf("http status code: %d", resp.StatusCode)
		resolve(0, fmt.Errorf("http status code: %d", resp.StatusCode))
		return
	}

	body, err := resp.Text().Await()
	if err != nil {
		// return 0, err
		resolve(0, err)
		return
	}

	score := 0.0
	if _, err := fmt.Sscanf(body, "%f", &score); err != nil {
		// return 0, err
		resolve(0, err)
		return
	}

	// return score, nil
	resolve(score, nil)
	return
}

func GetScoreCompiled() *io.PromiseImpl[float64] {
	var state1 *io.PromiseImpl[*Response]
	var state2 *io.PromiseImpl[string]

	P := &io.PromiseImpl[float64]{}
	P.Debug = "GetScore"
	P.Func = func(resolve func(float64, error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			state1 = AsyncHttpGetCompiled("http://example.com/score/")
			state1.Exec = P.Exec
			state1.Parent = P
			state1.Call()
			return
		case 1:
			P.Next = 2
			resp, err := state1.Value(), state1.Err()
			if err != nil {
				resolve(0, err)
				return
			}

			if resp.StatusCode != 200 {
				resolve(0, fmt.Errorf("http status code: %d", resp.StatusCode))
				return
			}

			state2 = resp.TextCompiled()
			state2.Exec = P.Exec
			state2.Parent = P
			state2.Call()

			return
		case 2:
			P.Next = -1
			body, err := state2.Value(), state2.Err()
			if err != nil {
				resolve(0, err)
				return
			}

			score := 0.0
			if _, err := fmt.Sscanf(body, "%f", &score); err != nil {
				resolve(0, err)
				return
			}
			resolve(score, nil)
			return
		default:
			panic("Promise already done")
		}
	}
	return P
}

func DoUpdate(op string) (resolve io.Promise[io.Void]) {
	resp, err := AsyncHttpPost("http://example.com/update/" + op).Await()
	if err != nil {
		// return err
		resolve(io.Void{}, err)
		return
	}

	if resp.StatusCode != 200 {
		// return fmt.Errorf("http status code: %d", resp.StatusCode)
		resolve(io.Void{}, fmt.Errorf("http status code: %d", resp.StatusCode))
		return
	}

	// return nil
	resolve(io.Void{}, nil)
	return
}

func DoUpdateCompiled(op string) *io.PromiseImpl[io.Void] {
	var state1 *io.PromiseImpl[*Response]

	P := &io.PromiseImpl[io.Void]{}
	P.Debug = "DoUpdate"
	P.Func = func(resolve func(io.Void, error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			state1 = AsyncHttpPostCompiled("http://example.com/update/" + op)
			state1.Exec = P.Exec
			state1.Parent = P
			state1.Call()
			return
		case 1:
			P.Next = -1
			resp, err := state1.Value(), state1.Err()
			if err != nil {
				resolve(io.Void{}, err)
				return
			}

			if resp.StatusCode != 200 {
				resolve(io.Void{}, fmt.Errorf("http status code: %d", resp.StatusCode))
				return
			}

			resolve(io.Void{}, nil)
			return
		default:
			panic("Promise already done")
		}
	}
	return P
}

func GenInts() (yield io.Promise[int]) {
	yield(3, nil)
	yield(2, nil)
	yield(5, nil)
	return
}

func GenIntsCompiled() *io.PromiseImpl[int] {
	P := &io.PromiseImpl[int]{}
	P.Debug = "GenInts"
	P.Func = func(resolve func(int, error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			resolve(3, nil)
			return
		case 1:
			P.Next = 2
			resolve(2, nil)
			return
		case 2:
			P.Next = 3
			resolve(5, nil)
			return
		case 3:
			P.Next = -1
			resolve(0, fmt.Errorf("stop"))
			return
		default:
			panic("Generator already done")
		}
	}
	return P
}

func GenUsers() (yield io.Promise[User]) {
	u, _ := GetUser("Alice").Await()
	yield(u, nil)
	u, _ = GetUser("Bob").Await()
	yield(u, nil)
	u, _ = GetUser("Cindy").Await()
	yield(u, nil)
	log.Printf("genUsers done\n")
	return
}

func GenUsersCompiled() (resolve *io.PromiseImpl[User]) {
	var state1, state2, state3 *io.PromiseImpl[User]

	P := &io.PromiseImpl[User]{}
	P.Debug = "GenUsers"
	P.Func = func(resolve func(User, error)) {
		switch P.Next {
		case 0:
			P.Next = 1
			state1 = GetUserCompiled("Alice")
			state1.Exec = P.Exec
			state1.Parent = P
			state1.Call()
			return
		case 1:
			P.Next = 2
			u, _ := state1.Value(), state1.Err()
			resolve(u, nil)
			return
		case 2:
			P.Next = 3
			state2 = GetUserCompiled("Bob")
			state2.Exec = P.Exec
			state2.Parent = P
			state2.Call()
			return
		case 3:
			P.Next = 4
			u, _ := state2.Value(), state2.Err()
			resolve(u, nil)
			return
		case 4:
			P.Next = 5
			state3 = GetUserCompiled("Cindy")
			state3.Exec = P.Exec
			state3.Parent = P
			state3.Call()
			return
		case 5:
			P.Next = 6
			u, _ := state3.Value(), state3.Err()
			resolve(u, nil)
			return
		case 6:
			P.Next = -1
			resolve(User{}, fmt.Errorf("stop"))
			return
		default:
			panic("Generator already done")
		}
	}
	return P
}

func Demo() (resolve io.Promise[io.Void]) {
	user, err := GetUser("1").Await()
	log.Println(user, err)

	user, err = io.Race[User](GetUser("2"), GetUser("3"), GetUser("4")).Await()
	log.Println(user, err)

	users, err := io.All[User]([]io.AsyncCall[User]{GetUser("5"), GetUser("6"), GetUser("7")}).Await()
	log.Println(users, err)

	user, score, _, err := io.Await3[User, float64, io.Void](GetUser("8"), GetScore(), DoUpdate("update sth."))
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
		g.Call()
		u, err := io.Await[int](g)
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
	return
}

func DemoCompiled() *io.PromiseImpl[io.Void] {
	var state1 *io.PromiseImpl[User]
	var state2 *io.PromiseImpl[User]
	var state3 *io.PromiseImpl[[]io.Result[User]]
	var state4 *io.PromiseImpl[io.Await3Result[User, float64, io.Void]]
	var g1 *io.PromiseImpl[int]
	var g2 *io.PromiseImpl[User]

	P := &io.PromiseImpl[io.Void]{}
	P.Debug = "Demo"
	P.Func = func(resolve func(io.Void, error)) {
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
			user, err := state1.Value(), state1.Err()
			log.Printf("user: %+v, err: %v\n", user, err)

			state2 = io.Race[User](GetUserCompiled("2"), GetUserCompiled("3"), GetUserCompiled("4"))
			state2.Exec = P.Exec
			state2.Parent = P
			state2.Call()
			return
		case 2:
			P.Next = 3
			user, err := state2.Value(), state2.Err()
			log.Printf("race user: %+v, err: %v\n", user, err)

			state3 = io.All[User]([]io.AsyncCall[User]{GetUserCompiled("5"), GetUserCompiled("6"), GetUserCompiled("7")})
			state3.Exec = P.Exec
			state3.Parent = P
			state3.Call()
			return
		case 3:

			P.Next = 4
			users, err := state3.Value(), state3.Err()
			log.Println(users, err)

			state4 = io.Await3Compiled[User, float64, io.Void](GetUserCompiled("8"), GetScoreCompiled(), DoUpdateCompiled("update sth."))
			state4.Exec = P.Exec
			state4.Parent = P
			state4.Call()
			return
		case 4:
			P.Next = 5
			user, score, _, err := state4.Value().V1, state4.Value().V2, state4.Value().V3, state4.Value().Err
			log.Println(user, score, err)

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
			if g2.Err() != nil {
				P.Next = -1
				resolve(io.Void{}, nil)
				return
			}
			log.Printf("genUser: %+v, done: %v\n", g2.Value(), g2.Done())
			g2.Call()
		default:
			panic("Promise already done")
		}
	}
	return P
}

func main() {
	log.SetFlags(log.Lshortfile | log.LstdFlags)
	// io.Run(Demo())
	v, err := io.Run[io.Void](DemoCompiled())
	log.Println(v, err)
}
