package main

func main() {
	func(resolve func(error)) {
		func(err error) {
			if err != nil {
				resolve(err)
				return
			}
			resolve(nil)
		}(nil)
	}(func(err error) {
	})
}
