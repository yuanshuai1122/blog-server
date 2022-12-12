package router

import (
	"blog-server/controller"
	"github.com/gin-gonic/gin"
)

/*
用户相关路由
*/
func UserRouterStart() *gin.Engine {
	router := gin.Default()
	// 查询用户接口
	router.GET("/user", controller.User)
	return router
}
