package controller

import (
	"blog-server/model"
	"github.com/gin-gonic/gin"
	"net/http"
)

func Menus(c *gin.Context) {
	var menus model.Menu

	result, err := menus.GetMenus()

	if err != nil {
		c.JSON(http.StatusOK, gin.H{
			"code": -1,
			"msg":  "not found",
			"data": "",
			"err":  err,
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"code": 1,
		"msg":  "success",
		"data": result,
		"err":  "",
	})
}
