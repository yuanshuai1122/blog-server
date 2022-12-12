package initializer

import "github.com/joho/godotenv"

// LoadEnv 加载环境变量 默认 .env
func LoadEnv() {
	err := godotenv.Load()
	if err != nil {
		return
	}
}
