package main

import (
	"encoding/json"
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/goplus/llgo/x/async"
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

func (r *Response) Text() (co async.Promise[tuple.Tuple2[string, error]]) {
	co.Return(tuple.Tuple2[string, error]{V1: r.Body, V2: nil})
	return
}

//	async AsyncHttpGet(url string) (resp *Response, err error) {
//	  http("GET", url, func(resp *Response, err error) {
//	    return resp, err
//	  })
//	}
func AsyncHttpGet(url string) (co async.Promise[tuple.Tuple2[*Response, error]]) {
	return co.Async(func(resolve func(tuple.Tuple2[*Response, error])) {
		http("GET", url, func(resp *Response, err error) {
			resolve(tuple.Tuple2[*Response, error]{V1: resp, V2: nil})
		})
	})
}

func AsyncHttpPost(url string) (co async.Promise[tuple.Tuple2[*Response, error]]) {
	http("POST", url, func(resp *Response, err error) {
		// co.Return(tuple.Tuple2[*Response, error]{V1: resp, V2: nil})
	})
	co.Suspend()
	return
}

// -----------------------------------------------------------------------------

type User struct {
	Name string
}

func GetUser(name string) (co async.Promise[tuple.Tuple2[User, error]]) {
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

func GetScore() (co *async.Promise[tuple.Tuple2[float64, error]]) {
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

func DoUpdate(op string) (co *async.Promise[error]) {
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

func GenInts() (co *async.Promise[int]) {
	co.Yield(3)
	co.Yield(2)
	co.Yield(5)
	return
}

// Generator with async calls and panic
func GenUsers() (co *async.Promise[User]) {
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

func Demo() (co *async.Promise[async.Void]) {
	user, err := GetUser("1").Await().Values()
	log.Println(user, err)

	// user, err = naive.Race[tuple.Tuple2[User, error]](GetUser("2"), GetUser("3"), GetUser("4")).Value().Values()
	// log.Println(user, err)

	// users := naive.All[tuple.Tuple2[User, error]]([]naive.AsyncCall[tuple.Tuple2[User, error]]{GetUser("5"), GetUser("6"), GetUser("7")}).Value()
	// log.Println(users, err)

	// user, score, _ := naive.Await3Compiled[User, float64, async.Void](GetUser("8"), GetScore(), DoUpdate("update sth.")).Value().Values()
	// log.Println(user, score, err)

	// for loop with generator
	g := GenInts()
	for !g.Done() {
		log.Println("genInt:", g.Value(), g.Done())
		g.Resume()
	}

	// for loop with async generator
	// for u, err := range GenUsers() {...}
	g1 := GenUsers()
	for !g1.Done() {
		u := g1.Value()
		log.Println("genUser:", u)
		g1.Resume()
	}

	// TODO(lijie): select from multiple promises without channel
	// select {
	// case user := <-GetUser("123").Chan():
	// 	log.Println("user:", user)
	// case score := <-GetScore().Chan():
	// 	log.Println("score:", score)
	// case <-async.Timeout(5 * time.Second).Chan():
	// 	log.Println("timeout")
	// }

	log.Println("Demo done")
	co.Return(async.Void{})
	return
}

func main() {
	log.SetFlags(log.Lshortfile | log.LstdFlags)

	log.Printf("=========== Run Demo ===========\n")
	v1 := Demo()
	log.Println(v1)
	log.Printf("=========== Run Demo finished ===========\n")
}
