package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Printf("p-sync v0.0.1 on %s_%s\n", runtime.GOOS, runtime.GOARCH)
}
