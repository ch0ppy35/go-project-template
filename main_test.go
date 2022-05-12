package main

import "testing"

func TestReturnMessageToUser(t *testing.T) {
	msg := returnMessageToUser()
	expected := "This is a template"
	if msg != expected {
		t.Errorf("returnMessageToUser() == %v, expected %v", msg, expected)
	}
}
