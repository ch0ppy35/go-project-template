package main

import "fmt"

func main() {
	msg := returnMessageToUser()
	fmt.Println(msg)
}

func returnMessageToUser() string {
	return "This is a template"
}
