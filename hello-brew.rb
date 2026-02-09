class HelloBrew < Formula
  desc "Minimal Rust CLI installed via Homebrew"
  homepage "https://github.com/ohama/hello-brew"
  version "0.1.0"

  on_linux do
    url "https://github.com/ohama/hello-brew/master/dist/hello-brew_rs_linux_amd64.tar.gz"
    sha256 "a45ad21a6f90f8ec94340e6fef55b51fba2ad51fbb7578d6d82cb46b5ee3a611"
  end

  def install
    bin.install "hello-brew"
  end

  test do
    assert_match "hello from brew (rust)!", shell_output("#{bin}/hello-brew")
  end
end

