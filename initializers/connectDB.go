package initializers

import (
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"log"
)

// ConnectDB 连接mysql
func ConnectDB() {
	dsn := "user:pass@tcp(182.61.11.252:3306)/blog_db?charset=utf8mb4&parseTime=True&loc=Local"
	_, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatal(err)
	}
}
