class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://github.com/rtk-ai/rtk"
  version "0.13.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v#{version}/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "68ba56b4cd2c0b21c52ba2b006d8b8b293eb0fce27d7c4f7029e83e846ca5aff"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v#{version}/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "8bc7ecb968b95cc581d09d6f1f3bd0122d667f85553fd913207647c755acebd6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v#{version}/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "6e8771a47580268d0e5227d1e919bbf56c8ec0dc339dc242f652cb6d9d04ef84"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v#{version}/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "681d11d85af300788ed1ace5c1ccf8c584d9f935c662e6c96f0b27a69a183550"
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

      Full documentation: https://github.com/rtk-ai/rtk
    EOS
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
