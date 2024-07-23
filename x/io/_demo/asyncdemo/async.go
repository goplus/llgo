package main

import (
	"encoding/json"
	"fmt"
	"log"
	"time"

	"github.com/goplus/llgo/x/io"
)

// -----------------------------------------------------------------------------

type Response struct {
	StatusCode int

	mockBody string
}

func (r *Response) mock(body string) {
	r.mockBody = body
}

func (r *Response) Text() (resolve io.Promise[string]) {
	resolve(r.mockBody, nil)
	return
}

func (r *Response) TextCompiled() *io.PromiseImpl[string] {
	P := &io.PromiseImpl[string]{}
	P.Func = func(resolve func(string, error)) {
		for {
			switch P.Prev = P.Next; P.Prev {
			case 0:
				resolve(r.mockBody, nil)
				P.Next = -1
				return
			default:
				panic("Promise already done")
			}
		}
	}
	return P
}

func HttpGet(url string, callback func(resp *Response, err error)) {
	resp := &Response{StatusCode: 200}
	callback(resp, nil)
}

func AsyncHttpGet(url string) (resolve io.Promise[*Response]) {
	HttpGet(url, resolve)
	return
}

func AsyncHttpGetCompiled(url string) *io.PromiseImpl[*Response] {
	P := &io.PromiseImpl[*Response]{}
	P.Func = func(resolve func(*Response, error)) {
		for {
			switch P.Prev = P.Next; P.Prev {
			case 0:
				HttpGet(url, resolve)
				P.Next = -1
				return
			default:
				panic("Promise already done")
			}
		}
	}
	return P
}

// -----------------------------------------------------------------------------

type User struct {
	Name string
}

func GetUser(uid string) (resolve io.Promise[User]) {
	resp, err := AsyncHttpGet("http://example.com/user/" + uid).Await()
	if err != nil {
		resolve(User{}, err)
		return
	}

	if resp.StatusCode != 200 {
		resolve(User{}, fmt.Errorf("http status code: %d", resp.StatusCode))
		return
	}

	resp.mock(`{"name":"Alice"}`)

	body, err := resp.Text().Await()
	if err != nil {
		resolve(User{}, err)
		return
	}
	user := User{}
	if err := json.Unmarshal([]byte(body), &user); err != nil {
		resolve(User{}, err)
		return
	}

	resolve(user, nil)
	return
}

func GetUserCompiled(uid string) *io.PromiseImpl[User] {
	var state1 *io.PromiseImpl[*Response]
	var state2 *io.PromiseImpl[string]

	P := &io.PromiseImpl[User]{}
	P.Func = func(resolve func(User, error)) {
		for {
			switch P.Prev = P.Next; P.Prev {
			case 0:
				state1 = AsyncHttpGetCompiled("http://example.com/user/" + uid)
				P.Next = 1
				return
			case 1:
				state1.EnsureDone()
				resp, err := state1.Value, state1.Err
				if err != nil {
					resolve(User{}, err)
					return
				}

				if resp.StatusCode != 200 {
					resolve(User{}, fmt.Errorf("http status code: %d", resp.StatusCode))
					return
				}

				resp.mock(`{"name":"Alice"}`)

				state2 = resp.TextCompiled()
				P.Next = 2
				return
			case 2:
				state2.EnsureDone()
				body, err := state2.Value, state2.Err
				if err != nil {
					resolve(User{}, err)
					return
				}
				user := User{}
				if err := json.Unmarshal([]byte(body), &user); err != nil {
					resolve(User{}, err)
					return
				}

				resolve(user, nil)
				P.Next = -1
				return
			default:
				panic("Promise already done")
			}
		}
	}
	return P
}

func GetScore() *io.Promise[float64] {
	panic("todo: GetScore")
}

func GetScoreCompiled() *io.PromiseImpl[float64] {
	P := &io.PromiseImpl[float64]{}
	P.Func = func(resolve func(float64, error)) {
		for {
			switch P.Prev = P.Next; P.Prev {
			case 0:
				panic("todo: GetScore")
			default:
				panic("Promise already done")
			}
		}
	}
	return P
}

func DoUpdate(op string) *io.Promise[io.Void] {
	panic("todo: DoUpdate")
}

func DoUpdateCompiled(op string) *io.PromiseImpl[io.Void] {
	P := &io.PromiseImpl[io.Void]{}
	P.Func = func(resolve func(io.Void, error)) {
		for {
			switch P.Prev = P.Next; P.Prev {
			case 0:
				panic("todo: DoUpdate")
			default:
				panic("Promise already done")
			}
		}
	}
	return P
}

func Demo() (resolve io.Promise[io.Void]) {
	user, err := GetUser("123").Await()
	log.Println(user, err)

	user, err = io.Race[User](GetUser("123"), GetUser("456"), GetUser("789")).Await()
	log.Println(user, err)

	users, err := io.All[User]([]io.AsyncCall[User]{GetUser("123"), GetUser("456"), GetUser("789")}).Await()
	log.Println(users, err)

	user, score, _, err := io.Await3[User, float64, io.Void](GetUser("123"), GetScore(), DoUpdate("update sth."))
	log.Println(user, score, err)

	// TODO(lijie): select from multiple promises without channel
	select {
	case user := <-GetUser("123").Chan():
		log.Println("user:", user)
	case score := <-GetScore().Chan():
		log.Println("score:", score)
	case <-io.Timeout(5 * time.Second).Chan():
		log.Println("timeout")
	}
	return
}

func DemoCompiled() *io.PromiseImpl[io.Void] {
	var state1 *io.PromiseImpl[User]
	var state2 *io.PromiseImpl[User]
	var state3 *io.PromiseImpl[[]User]
	var state4 *io.PromiseImpl[io.Await3Result[User, float64, io.Void]]

	P := &io.PromiseImpl[io.Void]{}
	P.Func = func(resolve func(io.Void, error)) {
		for {
			switch P.Prev = P.Next; P.Prev {
			case 0:
				state1 = GetUserCompiled("123")
				P.Next = 1
				return
			case 1:
				state1.EnsureDone()
				user, err := state1.Value, state1.Err
				log.Printf("user: %v, err: %v\n", user, err)

				state2 = io.Race[User](GetUserCompiled("123"), GetUserCompiled("456"), GetUserCompiled("789"))
				P.Next = 2
				return
			case 2:
				state2.EnsureDone()
				user, err := state2.Value, state2.Err
				log.Println(user, err)

				state3 = io.All[User]([]io.AsyncCall[User]{GetUserCompiled("123"), GetUserCompiled("456"), GetUserCompiled("789")})
				P.Next = 3
				return
			case 3:
				state3.EnsureDone()
				users, err := state3.Value, state3.Err
				log.Println(users, err)

				state4 = io.Await3Compiled[User, float64, io.Void](GetUserCompiled("123"), GetScoreCompiled(), DoUpdateCompiled("update sth."))
				P.Next = 4
				return
			case 4:
				state4.EnsureDone()
				user, score, _, err := state4.Value.V1, state4.Value.V2, state4.Value.V3, state4.Value.Err
				log.Println(user, score, err)

				select {
				case user := <-GetUserCompiled("123").Chan():
					log.Println("user:", user)
				case score := <-GetScoreCompiled().Chan():
					log.Println("score:", score)
				case <-io.TimeoutCompiled(5 * time.Second).Chan():
					log.Println("timeout")
				}
				P.Next = -1
				return
			default:
				panic("Promise already done")
			}
		}
	}
	return P
}

func main() {
	log.SetFlags(log.Lshortfile | log.LstdFlags)
	// io.Run(Demo())
	io.Run(DemoCompiled())
}
