package main

import (
	"blog-server/initializer"
	"blog-server/router"
	"fmt"
)

// 初始化环境变量
func init() {
	initializer.LoadEnv()
	initializer.ConnectDB()
}

func main() {
	fmt.Println("Hello Blog!")
	r := router.UserRouterStart()
	r.Run()
}
