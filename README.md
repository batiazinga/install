Some basic commands to set-up my workspace and start working.

# Install basic tools

```bash
./install.bash
```

# Install Go

See [official website](https://golang.org/).

Copy/paste this to `~/.profile` to setup go environment
```bash
# set PATH so it includes go bin if go is installed
if [ -d "/usr/local/go/bin" ] ; then
    # standard go binaries
    PATH="/usr/local/go/bin:$PATH"
    # my go binaries
    if [ -d "$(go env GOPATH)/bin" ] ; then
        PATH="$(go env GOPATH)/bin:$PATH"
    fi
fi

# explicitly set GOPATH to make sublime plugins work
# get rid of this ASAP
export GOPATH=$HOME/go
```

# Configuring Sublime Text to work with Go

Slightly adapted from this [blog post](https://www.alexedwards.net/blog/streamline-your-sublime-text-and-go-workflow).

Note:
- Packages are installed with the sublime package manager.
- `GOPATH` must be explicitly set (see above).

## Tooling integration

Install [Golang Build](https://github.com/golang/sublime-build) package.

## Automatic formatting

Install [Gofmt](https://packagecontrol.io/packages/Gofmt) package.
Also install `goimports` (see `go-dev-tools.bash`) and configure package like this
```json
{
  "cmds": [
    ["goimports"]
  ],
  "format_on_save": true
}
```

## Code navigation

Install [Goguru](https://packagecontrol.io/packages/GoGuru) package.
Also install `guru` (see `go-dev-tools.bash`).

## Linting

Install [SublimeLinter](https://packagecontrol.io/packages/SublimeLinter) and [SublimeLinter-golangcilint](https://packagecontrol.io/packages/SublimeLinter-golangcilint) packages.
Also install [golangci-lint](https://github.com/golangci/golangci-lint).