package controller

import (
	"blog-server/model"
	"github.com/gin-gonic/gin"
	"net/http"
)

func PostsPage(c *gin.Context) {
	var p model.Page
	if c.ShouldBindQuery(&p) != nil {
		c.JSON(http.StatusUnauthorized, gin.H{
			"code": -1,
			"msg":  "not found",
			"data": "",
			"err":  "参数错误",
		})
		return
	}
	if p.PageNum <= 0 {
		p.PageNum = 1
	}
	var post model.Post
	result, err := post.GetPostsByPage(p)
	if err != nil {
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"code": 1,
		"msg":  "success",
		"data": result,
		"err":  "",
	})

}
