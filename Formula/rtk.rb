class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.44.2"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "b7c2218eca538b54e63fa594a8ce58bd3716851b01b3b0dc026515323baf6393"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "636f808db86b2cefab7db7dd9393da8b6e4721bb2ffaa0644e3ffa52d3420d81"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5cd3f7fa2697faf9e5b77a10ce4e699006e02d4752d792f06550697eb4b8e8a9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.2/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "d94cc2a3e57fa534892b5235a726e7eeb7523f205a5f8f48f853bfcae7be7e33"
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
