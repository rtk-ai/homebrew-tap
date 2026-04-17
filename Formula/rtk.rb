class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.37.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.37.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "b4607dad722f0bc42f2da12d8b1e5c6e5f3867531242c2a4377f76a9c37d742e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.37.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "70d771a3b4db71d50565c5e305e861b2df2159513aafe01947985c39e31a61d9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.37.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "6262629a44b50ef937d5ddd01eaa4aeeda36b11a58f5b885bc29ba0b72a9f597"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.37.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "52183fe20d68fa14ddc3c1666a1810d821a4fb8334cc71a4c83d551ca4df0cd6"
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
