class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.47.0"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.47.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "3617f9a95d536e0b6bb9e2c6d121d81c3d8fd8ef04c5b2a605f5e7b0309a47d2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.47.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "4a6d9268a3dbf3e9d82872a4a3ac444548de613debe16a1458fc2862d1d941b6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.47.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "960ceb5f1f5f0b0939b32b5b1d41dec6d9a7113137b0703c68dca0d169a260fc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.47.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7c0175d867f96c4f8f788479af82ca8f0990ea944226268834d224a525186fb7"
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
