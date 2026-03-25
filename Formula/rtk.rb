class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.33.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "7436cb97853ed5c18adff45576abcca903315b3c1b9b1f9915785945c9e2a5c3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "6ee8a7b31d63986be2cd412ff6d86b9fa9cd170a52561cd0c850a80a9c9dd5f0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ac500d8ef52be335f32e622b633735b4f822327746be48571c4b1bf3ca9cda4e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "586fafc304aadf5f8ea8e27e2e6942704769614e4dc0ed1781969ab24235065c"
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
