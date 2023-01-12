package controller

import (
	"blog-server/errno"
	"blog-server/model"
	"github.com/gin-gonic/gin"
	"net/http"
)

// User 获取用户信息
func User(c *gin.Context) {
	var user model.User

	result, err := user.GetUsers()

	if err != nil {
		c.JSON(http.StatusOK, errno.ErrServer)
		return
	}

	c.JSON(http.StatusOK, errno.OK.WithData(result))
}
