package list

// 所有的网路请求均先通过 llpkg.goplus.org 进行代理
// 有必要时 fallback 至 github.com/goplus/llpkgstore

// llpkgstore.json 状态验证
// 1. 不存在 llpkgstore.json 文件
// 首先通过 llpkg.goplus.org 获取 llpkgstore.json 文件
// 如果服务不可用，fallback 至 github 直接拉取

// 拉取后将此次拉取的响应头中的 eTag 等相关信息进行保存到一个 llpkgstore.json.info 文件中

// 2. llpkgstore.json 文件存在
// 通过 llpkgstore.json.info 文件中的 eTag 等信息，携带 If-None-Match 请求头向 llpkg.goplus.org 发送请求，判断返回的状态码
// 如果状态码为 200，重新进行拉取，并更新 llpkgstore.json.info 文件

// TODO：在llpkg.goplus.org中添加 Rsync 服务，用于同步 llpkgstore.json 文件

// English Ver

// All network requests are proxied through llpkg.goplus.org
// Fallback to github.com/goplus/llpkgstore when necessary

// llpkgstore.json status verification
// 1. llpkgstore.json file does not exist
// First get the llpkgstore.json file through llpkg.goplus.org
// If the service is not available, fallback to github to pull directly

// Save the eTag and other related information in the response header of this pull to a llpkgstore.json.info file

// 2. llpkgstore.json file exists
// Use the eTag and other information in the llpkgstore.json.info file to send a request to llpkg.goplus.org with the If-None-Match request header to determine the return status code
// If the status code is 200, re-pull and update the llpkgstore.json.info file

// TODO：Add Rsync service to llpkg.goplus.org to synchronize llpkgstore.json file
