package controller

import (
	"blog-server/errno"
	"blog-server/model"
	"github.com/gin-gonic/gin"
	"net/http"
)

// PostsPage 分页查询文章列表
func PostsPage(c *gin.Context) {
	var p model.Page
	if c.ShouldBindQuery(&p) != nil {
		c.JSON(http.StatusUnauthorized, errno.ErrParam)
		return
	}
	if p.PageNum <= 0 {
		p.PageNum = 1
	}
	var post model.Post
	result, err := post.GetPostsByPage(p)
	if err != nil {
		c.JSON(http.StatusOK, errno.ErrServer)
		return
	}

	c.JSON(http.StatusOK, errno.OK.WithData(result))

}
