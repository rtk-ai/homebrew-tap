class RtkOss < Formula
  desc "Rust Token Killer - Apache-2.0 edition: hook rewrite and command filters"
  homepage "https://www.rtk-ai.app"
  version "1.1.0"
  license "Apache-2.0"

  conflicts_with "rtk", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.1.0/rtk-oss-aarch64-apple-darwin.tar.gz"
    sha256 "1623590dd8d65374f61589c599c764c08ba9ce993ebe6b601312a89a3c874558"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.1.0/rtk-oss-x86_64-apple-darwin.tar.gz"
    sha256 "559156238dd3e148c84c88c3a62a7594b874f68793208994e1b02e77a9d9abf9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.1.0/rtk-oss-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "57a4fac13d18da77f0577ea8b68def7934b934bf76d0a6e161f0bfd06b1e1078"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.1.0/rtk-oss-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4dec94a64035e08189ae82fd5408fe4ae9ae27a665fc07e3e3ec3c4c2d8e8a3e"
  end

  def install
    bin.install "rtk"
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
