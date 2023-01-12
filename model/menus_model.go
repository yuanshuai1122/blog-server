package model

import (
	"blog-server/initializer"
	"time"
)

// Menu 菜单结构体
type Menu struct {
	// 主键id
	Id uint64 `json:"id"`
	// 用户id
	UserId uint64 `json:"user_id"`
	// 图标
	Icon string `json:"icon"`
	// 名称
	Name string `json:"name"`
	// 父id
	ParentId string `json:"parent_id"`
	// 优先级
	Priority string `json:"priority"`
	// 路由url
	Url string `json:"url"`
	// 逻辑删除 normal:正常 deleted:删除
	IsDeleted string `json:"is_deleted"`
	// 创建时间
	CreateTime time.Time `json:"create_time"`
	// 更新时间
	UpdateTime time.Time `json:"update_time"`
}

// 列表
func (menu *Menu) GetMenus() (menus []Menu, err error) {
	if err = initializer.DB.Where("is_deleted = ?", "normal").Find(&menus).Error; err != nil {
		return
	}
	return
}
