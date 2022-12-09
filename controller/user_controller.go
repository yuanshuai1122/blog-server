package controller

import (
	"blog-server/dao"
	"github.com/gin-gonic/gin"
	"net/http"
)

func User(c *gin.Context) {
	dao.GetUsers()
	c.JSON(http.StatusOK, gin.H{
		"message": "Hello World!",
	})
}
