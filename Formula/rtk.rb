class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.15.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "2832348e095fbe638022a02bc275a496c67b1dd046dc050fce5e71d6d0ee3038"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "de41c069ba0811b29765fb356242ba3c8fabf408121e793b54cc97bca2edd975"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "73a64717f62f15694020a3c7a25f068499beeca9a8e80c3cacd64fc8035d1696"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.1/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "52c7f6ba6fda2290c0ef5657093aad64624d93510c04564a4ddf6d70b7cfa146"
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
