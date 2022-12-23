package router

import (
	"blog-server/controller"
	"github.com/gin-gonic/gin"
)

/*
用户相关路由
*/
func RoutersStart() *gin.Engine {
	router := gin.Default()
	// 查询用户接口
	router.GET("/user", controller.User)
	// 查询菜单接口
	router.GET("/menus", controller.Menus)
	// 查询文章列表（分页）
	router.GET("/posts", controller.PostsPage)
	return router
}
