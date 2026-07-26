class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.44.0"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "2f6492ffc6c5a2f355b159aef17f30e5bb250abd80329dc03a099b5411638b1c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "027e940d2e9928ea44290577163570bf2540b54c4698d23e3ba170bb34ffeffc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "48be2ebe6332ceb67301909125ea20a3f557b07a7c6614defed29f9bf8e1d074"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3c3316cfc068e372432b415faeab73d46f8047750d488dd94d01d8d9f016a2a1"
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
