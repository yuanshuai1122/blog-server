package model

import "blog-server/initializer"

type User struct {
	// 主键id
	Id int32 `json:"id"`
	// 用户名
	Username string `json:"username"`
	// 用户密码
	Password string `json:"password"`
	// 昵称
	Nickname string `json:"nickname"`
	// 头像
	Avatar string `json:"avatar"`
	// 介绍
	Description string `json:"description"`
	// 邮箱
	Email string `json:"email"`
	// 逻辑删除 0：正常 1：删除
	IsDeleted int32 `json:"isDeleted"`
	// 创建时间
	CreateTime string `json:"createTime"`
	// 修改时间
	UpdateTime string `json:"updateTime"`
}

/*
当return 后面为空时，函数声明时的 (users []User, err error) 会把 users,err 作为返回值；
当 return 不为空时，会把 return 后面的值作为返回值。
*/
// 列表
func (user *User) GetUsers() (users []User, err error) {
	if err = initializer.DB.Find(&users).Error; err != nil {
		return
	}
	return
}
