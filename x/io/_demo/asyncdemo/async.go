package main

import (
	"encoding/json"
	"fmt"
	"time"

	"github.com/goplus/llgo/x/io"
)

type Response struct {
	StatusCode int

	mockBody string
}

func (r *Response) mock(body string) {
	r.mockBody = body
}

func (r *Response) Text() *io.Promise[string] {
	return io.NewPromise[string](func(resolve func(string, error)) {
		resolve(r.mockBody, nil)
	})
}

func HttpGet(url string, callback func(resp *Response, err error)) {
	panic("todo: Get")
}

func AsyncHttpGet(url string) io.AsyncCall[*Response] {
	return io.NewPromise[*Response](func(resolve func(*Response, error)) {
		HttpGet(url, resolve)
	})
}

type User struct {
	Name string
}

func GetUser(uid string) io.AsyncCall[User] {
	return io.NewPromise[User](func(resolve func(User, error)) {
		resp, err := io.Await(AsyncHttpGet("http://example.com/user/" + uid))
		if err != nil {
			resolve(User{}, err)
			return
		}

		if resp.StatusCode != 200 {
			resolve(User{}, fmt.Errorf("http status code: %d", resp.StatusCode))
			return
		}

		resp.mock(`{"name":"Alice"}`)

		body, err := io.Await[string](resp.Text())
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
	})
}

// func GetUser1(uid string) (resolve io.AsyncCall[User]) {
// 	resp, err := io.Await(AsyncHttpGet("http://example.com/user/" + uid))
// 	if err != nil {
// 		resolve(User{}, err)
// 		return
// 	}

// 	if resp.StatusCode != 200 {
// 		resolve(User{}, fmt.Errorf("http status code: %d", resp.StatusCode))
// 		return
// 	}

// 	resp.mock(`{"name":"Alice"}`)

// 	body, err := io.Await[string](resp.Text())
// 	if err != nil {
// 		resolve(User{}, err)
// 		return
// 	}
// 	user := User{}
// 	if err := json.Unmarshal([]byte(body), &user); err != nil {
// 		resolve(User{}, err)
// 		return
// 	}

// 	resolve(user, nil)
// }

func GetScore() *io.Promise[float64] {
	panic("todo: GetScore")
}

func DoUpdate(op string) *io.Promise[io.Void] {
	panic("todo: DoUpdate")
}

func main() {
	user, err := GetUser("123").Await()
	fmt.Println(user, err)

	user, err = io.Race(GetUser("123"), GetUser("456"), GetUser("789")).Await()
	fmt.Println(user, err)

	user, score, _, err := io.Await3[User, float64, io.Void](GetUser("123"), GetScore(), DoUpdate("update sth."))
	fmt.Println(user, score, err)

	select {
	case user := <-GetUser("123").Chan():
		fmt.Println("user:", user)
	case score := <-GetScore().Chan():
		fmt.Println("score:", score)
	case <-io.Timeout(5 * time.Second).Chan():
		fmt.Println("timeout")
	}
}
