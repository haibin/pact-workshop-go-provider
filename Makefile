install:
	@if [ ! -d pact/bin ]; then\
		echo "--- 🛠 Installing Pact CLI dependencies";\
		curl -fsSL https://raw.githubusercontent.com/pact-foundation/pact-ruby-standalone/master/install.sh | bash;\
    fi

provider: install
	@echo "--- 🔨Running Provider Pact tests "
	go test -count=1 -tags=integration github.com/haibin/pact-workshop-go-provider/provider -run "TestPactProvider"
