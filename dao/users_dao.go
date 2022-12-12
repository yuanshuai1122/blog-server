package dao

//import (
//	"blog-server/initializer"
//	"blog-server/model"
//
//)
//
//
///*
//当return 后面为空时，函数声明时的 (users []User, err error) 会把 users,err 作为返回值；
//当 return 不为空时，会把 return 后面的值作为返回值。
//*/
//// 列表
//func (user *User) FindUsers() (users []User, err error) {
//	if err = initializer.DB.Find(&users).Error; err != nil {
//		return
//	}
//	return
//}
