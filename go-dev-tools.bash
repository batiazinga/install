# goimports automatically Go import lines
echo ">> install goimports"
go get -u golang.org/x/tools/cmd/goimports

# delve is a debugger for Go
echo ">> install dlv"
go get -u github.com/go-delve/delve/cmd/dlv

# golint is a linter for Go code
echo ">> install golint"
go get -u golang.org/x/lint/golint