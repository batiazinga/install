# goimports automatically Go import lines
echo ">> install goimports"
go get -u golang.org/x/tools/cmd/goimports

# delve is a debugger for Go
echo ">> install dlv"
go get -u github.com/go-delve/delve/cmd/dlv

# golangci-lint is linter aggregator
echo ">> install golangci-lint"
go get -u github.com/golangci/golangci-lint/cmd/golangci-lint

# guru is an editor-integrated tool for navigating into Go code
echo ">> install guru"
go get -u golang.org/x/tools/cmd/guru
