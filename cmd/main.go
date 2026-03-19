package main

import "fmt"

func main() {
	fmt.Println(greetings("LuKe"))
}

func greetings(name string) string {
	return fmt.Sprintf("Hello, %s", name)
}
