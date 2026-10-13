class RtkOss < Formula
  desc "Rust Token Killer - Apache-2.0 edition: hook rewrite and command filters"
  homepage "https://www.rtk-ai.app"
  version "1.0.0"
  license "Apache-2.0"

  conflicts_with "rtk", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.0/rtk-oss-aarch64-apple-darwin.tar.gz"
    sha256 "17fa35a06e2bf2a7709d9b1e966b2c2a54e9e6a9ab457c2e63e8c82969aed256"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.0/rtk-oss-x86_64-apple-darwin.tar.gz"
    sha256 "07fc4d47ea5edc2d1188843d500bbc3d869d60136677f3c0bfd45b64f456f198"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.0/rtk-oss-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "318d1b3b8438a260762f2a5b050bd5a61ebaa7bec13f37c475ca1d6372a3b61d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.0/rtk-oss-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9a0f4f8240a0701d9c409dcd9afc1f6f1e8625d55299d84af17fcd26d0b70600"
  end

  def install
    bin.install "rtk"
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
