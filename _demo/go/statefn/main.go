package main

type stateFn func(*counter) stateFn

type counter struct {
	value int
	max   int
	state stateFn
}

func main() {
	c := &counter{max: 5, state: startState}

	for c.state != nil {
		c.state = c.state(c)
	}
}

func startState(c *counter) stateFn {
	println("start")
	return countState
}

func countState(c *counter) stateFn {
	c.value++
	println("count:", c.value)

	if c.value >= c.max {
		return endState
	}
	return countState
}

func endState(c *counter) stateFn {
	println("end")
	return nil
}
