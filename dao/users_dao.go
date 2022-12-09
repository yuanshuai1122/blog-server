package dao

import (
	"blog-server/initializer"
	"blog-server/model"
	"log"
)

func GetUsers() {
	data := initializer.DB.First(&model.Users{})
	log.Println(data)
}
