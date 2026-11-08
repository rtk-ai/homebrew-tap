class RtkOss < Formula
  desc "Rust Token Killer - Apache-2.0 edition: hook rewrite and command filters"
  homepage "https://www.rtk-ai.app"
  version "1.2.0"
  license "Apache-2.0"

  conflicts_with "rtk", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.0/rtk-oss-aarch64-apple-darwin.tar.gz"
    sha256 "1959bd6d89a729ccdee176b7141490bbe750820f032c74f29a752576f2495254"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.0/rtk-oss-x86_64-apple-darwin.tar.gz"
    sha256 "48f8cee63ae0b4853f9a77d7839e62ffcca18ef88c408f8a93d4e69986b1ab82"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.0/rtk-oss-aarch64-unknown-linux-musl.tar.gz"
    sha256 "9786c61dbbea704e1468ee7060930d3b45b67f79ba2babfb73463e85340628d9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.0/rtk-oss-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a28407dc13038bdc9c2a1f5a047b0c636e0c1d495b15523576e2adb992a06a17"
  end

  def install
    bin.install "rtk"
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
