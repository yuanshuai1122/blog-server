package model

import (
	"blog-server/initializer"
	"log"
	"time"
)

// Post 文章列表结构体
type Post struct {
	// id
	Id uint64 `json:"id"`
	// 用户id
	UserId uint64 `json:"user_id"`
	// 标题
	Title string `json:"title"`
	// 摘要
	Summary string `json:"summary"`
	// 逻辑删除
	IsDeleted string `json:"is_deleted"`
	// 创建时间
	CreateTime time.Time `json:"create_time"`
	// 修改时间
	UpdateTime time.Time `json:"update_time""`
	// 编辑时间
	EditTime time.Time `json:"edit_time"`
}

// 分页查询文章列表
func (post *Post) GetPostsByPage(page Page) (posts []Post, err error) {
	log.Println("分页查询文章列表开始，PageNum: ", page.PageNum)
	log.Println("分页查询文章列表开始，PageSize: ", page.PageSize)
	if err := initializer.DB.Limit(page.PageSize).Offset((page.PageNum - 1) * page.PageSize).Find(&posts).Error; err != nil {
		log.Println("分页查询文章列表异常:", err)
		return nil, err
	}
	log.Println("分页查询文章列表成功:", posts)
	return
}
