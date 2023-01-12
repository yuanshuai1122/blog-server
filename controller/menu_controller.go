package controller

import (
	"blog-server/errno"
	"blog-server/model"
	"github.com/gin-gonic/gin"
	"net/http"
)

func Menus(c *gin.Context) {
	var menus model.Menu

	result, err := menus.GetMenus()

	if err != nil {
		c.JSON(http.StatusOK, errno.ErrServer)
		return
	}

	c.JSON(http.StatusOK, errno.OK.WithData(result))
}
