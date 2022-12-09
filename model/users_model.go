package model

import "gorm.io/gorm"

type Users struct {
	gorm.Model
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
