class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.42.4"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.4/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "f223ca074a0215af002679bc1d34ca92b93e25b3e8ae16aace6e84c06e586802"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.4/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "84121316867613e61925c209607f033b2113bb0ce312c267a79d3e3e8f221e49"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.4/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "cc2b91c064eb670c097c184913c8fbcb1a943d53d7fe505375e96ba0c5b6459f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.4/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "34975116da11e09e502501daf758143e0b22ed3a42a10eb67fb693a6270d9e36"
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
