// 创建logger.go文件
package list

import (
	"fmt"
	"io"
	"os"
	"sync"
)

// LogLevel 定义日志级别
type LogLevel int

const (
	LogDebug LogLevel = iota
	LogInfo
	LogWarning
	LogError
)

// Logger 提供统一的日志接口
type Logger struct {
	level     LogLevel
	output    io.Writer
	errOutput io.Writer
	mu        sync.Mutex
}

// 全局默认logger实例
var DefaultLogger = NewLogger(LogInfo, os.Stdout, os.Stderr)

// NewLogger 创建新的Logger实例
func NewLogger(level LogLevel, output, errOutput io.Writer) *Logger {
	return &Logger{
		level:     level,
		output:    output,
		errOutput: errOutput,
	}
}

// Debug 输出调试信息
func (l *Logger) Debug(format string, args ...interface{}) {
	if l.level <= LogDebug {
		l.mu.Lock()
		defer l.mu.Unlock()
		fmt.Fprintf(l.output, "[DEBUG] "+format+"\n", args...)
	}
}

// Info 输出信息
func (l *Logger) Info(format string, args ...interface{}) {
	if l.level <= LogInfo {
		l.mu.Lock()
		defer l.mu.Unlock()
		fmt.Fprintf(l.output, "[INFO] "+format+"\n", args...)
	}
}

// Warning 输出警告
func (l *Logger) Warning(format string, args ...interface{}) {
	if l.level <= LogWarning {
		l.mu.Lock()
		defer l.mu.Unlock()
		fmt.Fprintf(l.errOutput, "[WARNING] "+format+"\n", args...)
	}
}

// Error 输出错误
func (l *Logger) Error(format string, args ...interface{}) {
	if l.level <= LogError {
		l.mu.Lock()
		defer l.mu.Unlock()
		fmt.Fprintf(l.errOutput, "[ERROR] "+format+"\n", args...)
	}
}

// 全局快捷函数
func Debug(format string, args ...interface{}) {
	DefaultLogger.Debug(format, args...)
}

func Info(format string, args ...interface{}) {
	DefaultLogger.Info(format, args...)
}

func Warning(format string, args ...interface{}) {
	DefaultLogger.Warning(format, args...)
}

func Error(format string, args ...interface{}) {
	DefaultLogger.Error(format, args...)
}

// SetLevel 设置日志级别
func SetLevel(level LogLevel) {
	DefaultLogger.level = level
}
