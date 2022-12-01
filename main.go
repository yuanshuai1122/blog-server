package main

import (
	"blog-server/initializers"
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
)

// 初始化环境变量
func init() {
	initializers.LoadEnv()
}

func main() {
	fmt.Println("Hello Blog!")

	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "Hello World!",
		})
	})

	err := r.Run()
	if err != nil {
		return
	}
}
