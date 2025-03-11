package mod

//简述这个 module 下面的每个文件的用处
//
//cache.go
//
//cache.go 只负责 本地 缓存相关的操作
//也就是说设计上只能 CacheManager 这个结构体中的方法读取本地文件，并且返回一个对应类型的实例或者引用
//同时也可以传递一个 []byte 或者什么其他类型进行本地文件的更新写入
//
//如果说你想进行对应管理，比如 llgo list 和 llgo get 都需要使用 llpkgstore.json 读取后的结果。
//但是依然推荐在自己的 module 或者这个文件中的其他逻辑中自己进行写与调用
//尽量小的保证这个 module 中的内容和其他 module 的耦合度
//
//这个文件中的方法只负责本地文件的交互
//
//
//domain.go
//
//对于一个 go module 来说约定基础信息的地方
//
//
//logger.go
//
//开发阶段暂时性代码
//负责控制台打印调试信息
//
//
//meta.go
//
//负责当前模块的元信息
//
//
//store.go
//
//负责 llpkgstore.json 的解析和更新
