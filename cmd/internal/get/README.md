# LLGo get design
## How install `llgo get`
```cmd
cd llgo
go install -v ./cmd/...
export LLGO_ROOT=$PWD
```
For now, site-packages is downloaded by pip in `llgo/python/lib/python3.12/site-packages`

## How to check if `llgo get` work with a certain \<pylib\>
use the full path of a package and run command below:
For example
```cmd
go list -m -versions github.com/Bigdata-shiyang/test/numpy
```
it should return 
```cmd
github.com/Bigdata-shiyang/test/numpy v0.1.0 v0.1.1
```
Then
```
go get github.com/Bigdata-shiyang/test/numpy
```
and
```
go: added github.com/Bigdata-shiyang/test/numpy v0.1.1
```
This means LLGo can get certain llgo modules