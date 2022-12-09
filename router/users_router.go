package router

import (
	"blog-server/controller"
	"github.com/gin-gonic/gin"
)

/*
	用户相关路由
*/
func UserRouterStart() {
	e := gin.Default()
	// 查询用户接口
	e.GET("/user", controller.User)
}
