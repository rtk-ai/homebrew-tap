class RtkOss < Formula
  desc "Rust Token Killer - Apache-2.0 edition: hook rewrite and command filters"
  homepage "https://www.rtk-ai.app"
  version "1.0.1"
  license "Apache-2.0"

  conflicts_with "rtk", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.1/rtk-oss-aarch64-apple-darwin.tar.gz"
    sha256 "4a4d9d09656ff29423336aa506e680afc3f7b6dafe84f0194a1c9a523a3c80e1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.1/rtk-oss-x86_64-apple-darwin.tar.gz"
    sha256 "2cf4d6dd2cabccbc74aa6aba2a48e60aad85b1a31e3d740e6ca0b2fa0060b06a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.1/rtk-oss-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ee24a43dac9162de55fea8460b5efcd56d401ec28b5117c921bffa8a57bc136e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.1/rtk-oss-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a44e8ffc43981100b4ddf1710399a1649a6c874591aa6d0c0727fe6cbd983c41"
  end

  def install
    bin.install "rtk"
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
