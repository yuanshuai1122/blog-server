package models

import "gorm.io/gorm"

type users struct {
	gorm.Model
	Id          int
	Username    string
	Password    string
	Nickname    string
	Avatar      string
	Description string
	Email       string
	CreateTime  string
	UpdateTime  string
}
