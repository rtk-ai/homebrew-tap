class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.41.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.41.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "8b9751f927da4fb433be23f24f205bf1c22f9dd6949790c0980d2cc91b14658c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.41.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "b2729d9983b38af77824a5c7a3c23de415533be9fb022a5e473904ecc9620db9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.41.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "68d6fedfd76f16437eb79cb659169ef8bc3994124486cc71d9479a1b241b7812"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.41.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "90ae10f5c76de9bacaec5eeeefb6012f74dd47f4e280ec614295555b64da6b57"
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
