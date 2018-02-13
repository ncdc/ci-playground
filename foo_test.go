package main

import "testing"

func TestHelloWorld(t *testing.T) {
	t.Errorf("bad")
}

func TestSomething(t *testing.T) {
	t.Logf("all good!")
}
