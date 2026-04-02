class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.34.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.3/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "945f644a77e5da3367142a999c41a4fa448d0a4ae3e61c8a45094b8522dba047"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.3/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "35928229a7fe064016b7cd567e9333278c661221e2a19180d4f1943516a8c1f1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.3/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0a3afae8435a352c32eaacb8ecd76953146928191fefc8b2de703f3adf10c9f8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.3/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a607c17bfdccc1d48dc94ca81cd3a545523329df6a378368fd175d8023425ea5"
  end

  def install
    bin.install "rtk"
  end

  def caveats
    <<~EOS
      rtk is installed! Get started:

        # Initialize for Claude Code
        rtk init -g          # Global hook-first setup (recommended)
        rtk init             # Add to ./CLAUDE.md (this project only)

        # See all commands
        rtk --help

        # Measure your token savings
        rtk gain

      Full documentation: https://www.rtk-ai.app
    EOS
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
