all: linux_amd64

darwin_arm64:
	mkdir -p dist
	cp target/release/hello-brew-rs dist/hello-brew
	tar -czf dist/hello-brew_rs_darwin_arm64.tar.gz -C dist hello-brew
	shasum -a 256 dist/hello-brew_rs_darwin_arm64.tar.gz

linux_amd64: target/release/hello-brew-rs
	mkdir -p dist
	cp target/release/hello-brew-rs dist/hello-brew
	tar -czf dist/hello-brew_rs_linux_amd64.tar.gz -C dist hello-brew
	shasum -a 256 dist/hello-brew_rs_linux_amd64.tar.gz

target/release/hello-brew-rs:
	cargo build --release

clean:
	rm -rf target dist

