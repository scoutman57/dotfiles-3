# golang.sh: install Go, set up environment variables
# Source: http://stackoverflow.com/questions/12843063/install-go-with-brew-and-running-the-gotour

# Create directories
mkdir -p $HOME/Work/go
mkdir -p $HOME/Work/go/src/github.com/athyuttamre

# Setup paths; also checkout .exports and .path for permanent additions
export GOPATH=$HOME/Work/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Install Go
brew install go

# "get" the basics
go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet
go get github.com/golang/lint/golint
