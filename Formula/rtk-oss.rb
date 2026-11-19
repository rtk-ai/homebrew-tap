class RtkOss < Formula
  desc "Rust Token Killer - Apache-2.0 edition: hook rewrite and command filters"
  homepage "https://www.rtk-ai.app"
  version "1.2.1"
  license "Apache-2.0"

  conflicts_with "rtk", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.1/rtk-oss-aarch64-apple-darwin.tar.gz"
    sha256 "5a37e5e8e016b559597024900e7b21cff7a0015aa189ac6ac80d461cbb4be65b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.1/rtk-oss-x86_64-apple-darwin.tar.gz"
    sha256 "5e39ee8c4613c798f8d62868d4851bacca5aefcc134301052841e458ed71c797"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.1/rtk-oss-aarch64-unknown-linux-musl.tar.gz"
    sha256 "b01860ae2d3f44e0f7fc4431a95dd66b29b4bd87ec7f5e60aff13681b05db5dd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.1/rtk-oss-x86_64-unknown-linux-musl.tar.gz"
    sha256 "44aa460c4827d206d11405c652832c9f7082edccfbc3a9f15a69a851e8a9e8b4"
  end

  def install
    bin.install "rtk"
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
