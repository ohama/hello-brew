class HelloBrew < Formula
  desc "Minimal Rust CLI installed via Homebrew"
  homepage "https://github.com/ohama/hello-brew"
  version "0.1.5"

  on_linux do
    url "https://github.com/ohama/hello-brew/releases/download/v0.1.5/hello-brew_rs_linux_amd64.tar.gz"
    sha256 "7dfe78a31c8589bf07d68a520ffb2dcaa870257fb851dddf13f66d8ca5124578"
  end

  def install
    bin.install "hello-brew"
  end

  test do
    assert_match "hello from brew (rust)!", shell_output("#{bin}/hello-brew")
  end
end
