# extract binary name from go module
PRJNAME := $(lastword $(subst /, ,$(word 2, $(file < go.mod))))

# file for storing test coverage, used for for visualization 
COVERAGE_FILE=coverage.out

# targets
NATIVE := $(PRJNAME)
LINUX_AMD64 := $(PRJNAME)_linux_amd64
LINUX_ARM64 := $(PRJNAME)_linux_arm64
DARWIN_AMD64 := $(PRJNAME)_darwin_amd64
DARWIN_ARM64 := $(PRJNAME)_darwin_arm64
ALL := $(NATIVE) $(LINUX_AMD64) $(LINUX_ARM64) $(DARWIN_AMD64) $(DARWIN_ARM64)

$(NATIVE):
	go build -o $@ ./cmd

$(LINUX_AMD64):
	env GOOS=linux GOARCH=amd64 go build -o $@ ./cmd

$(LINUX_ARM64):
	env GOOS=linux GOARCH=arm64 go build -o $@ ./cmd

$(DARWIN_AMD64):
	env GOOS=darwin GOARCH=amd64 go build -o $@ ./cmd

$(DARWIN_ARM64):
	env GOOS=darwin GOARCH=arm64 go build -o $@ ./cmd

clean:
	rm -f $(ALL) $(COVERAGE_FILE)

all: clean $(ALL)

test:
	go test -count=1 ./...

test.coverage:
	go test -cover -coverprofile $(COVERAGE_FILE) -count=1 ./...

test.coverage.view: test.coverage
	go tool cover -html=$(COVERAGE_FILE)