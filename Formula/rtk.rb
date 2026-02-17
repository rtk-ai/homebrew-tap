class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.20.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.20.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "e021a971bb7aa46badd19fffb74bee99b8e6b08da816546ca9cf1c74c3cc3f37"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.20.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "3dca8c728f0582cba7ccdd0a2c988af7dff1f26c4fb867c0aedb32c69b19e035"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.20.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "893df4b399ff3fa7f8a6ee99a9ba9353deb663d83ca35849f9b2c6532c8deb3a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.20.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ced818a4ce21a5490dfbdce7f9eac3e13b53f03252436561d3a055479467fde6"
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
