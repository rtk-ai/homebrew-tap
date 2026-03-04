class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.24.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.24.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "9118aeb6a4e5c6f7eb7e74ea157a5215df3f9a66c7da51ffe5b668b0381945e2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.24.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "4942aa98a450b002be5eced1984ee064444b1386da50f75e814e2a9d1d8abd48"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.24.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "84cec53e6fce4b2b7de674a4f2d20583c6519fceea4eac0085f37343be8a67f4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.24.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a4d155bd2d06933e86b3362275895cf6436f83aa7f4666928c3a99c1d65d4564"
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
