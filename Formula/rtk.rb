class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "1.0.0"
  license all_of: ["Apache-2.0", "BUSL-1.1"]

  conflicts_with "rtk-oss", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "6f3c50e9a9a0333b29cc2a2244782f6ac2052ec7e5b036c65d2116d35e1bc2c7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "69504389e1c43e7c850cf527b51c5f0ea31c3634d6c5359253e12eeebd521d11"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "9438c2c99d428fa6fbe7f4d1c01a87babd5feec17ee6d7bb3372a613a21db7d3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b0b69fbed72f55d8eae18587c0b6bc140a8a8b39d5b7c6e6df33795249940926"
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
