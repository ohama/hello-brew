class HelloBrew < Formula
  desc "Minimal Rust CLI installed via Homebrew"
  homepage "https://github.com/ohama/hello-brew"
  version "0.1.6"

  on_linux do
    url "https://github.com/ohama/hello-brew/releases/download/v0.1.6/hello-brew_rs_linux_amd64.tar.gz"
    sha256 "5d5458da42371dd685ad597ee2795d79e66d01b7c4c41a5c9e5a1027e391cda8"
  end

  def install
    bin.install "hello-brew"
  end

  test do
    assert_match "hello from brew (rust)!", shell_output("#{bin}/hello-brew")
  end
end
