class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.18.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.18.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "b499399faa02a315cc2e0731f172cced4ffc23206c70085b55157479bf577096"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.18.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "3b2c40b465a457f881f1cf4e83a0b6534b843049ee5836bbb8071a1377ab08ab"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.18.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1ed713b954e722ad85baf80d93802b4db556e5bb1e1cf9f40dcf33ae235174db"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.18.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0bfabb55fa41e3637075ea4525d12b7eac5ec47df1b4ad3dd6b1840f08f7f0ed"
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
