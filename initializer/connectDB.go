package initializer

import (
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"log"
)

var DB *gorm.DB

// ConnectDB 连接mysql
func ConnectDB() {
	dsn := "root:yuanshuai520@tcp(182.61.11.252:3306)/blog_db?charset=utf8mb4&parseTime=True&loc=Local"
	DB, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil && DB != nil {
		log.Fatal(err)
	}
}
