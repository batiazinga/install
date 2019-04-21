Some basic commands to set-up my workspace and start working.

# Install basic tools

```bash
./install.bash
```

# Install go

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
```