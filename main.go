package main

import (
	"blog-server/initializers"
	"blog-server/models"
	"fmt"
	"github.com/gin-gonic/gin"
	"log"
	"net/http"
)

// 初始化环境变量
func init() {
	initializers.LoadEnv()
	initializers.ConnectDB()
}

func main() {
	fmt.Println("Hello Blog!")

	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "Hello World!",
		})
	})

	r.POST("/create", func(c *gin.Context) {
		var body struct {
			Date    string `json:"date"`
			Content string `json:"content"`
			Author  string `json:"author"`
		}

		gin.Bind(body)

		log.Println(body)

		data := models.Blog{Date: body.Date, Content: body.Content, Author: body.Author}
		initializers.DB.Create(&data)

		c.JSON(http.StatusOK, gin.H{
			"message": "create Ok",
		})
	})

	err := r.Run()
	if err != nil {
		return
	}
}
