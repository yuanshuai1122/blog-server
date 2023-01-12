package model

// Page 分页结构体
type Page struct {
	PageNum  int `form:"pageNum"`
	PageSize int `form:"pageSize"`
}
