class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.15.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.4/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "fe8466d46fce448c458838420097b9a2e1639a5625e7f3f9b74c9feedeb85d91"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.4/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "9729e97be8733b35bb0b08e49ada39b6b37d1f3ddfae7873d3f27103de21f3fa"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.4/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "81e950d204a0fbbd595414598cf5441eb1c5930d74480b601b72caffefbcd74a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.4/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a2e537b46c5852e71290393a848d6fa22a1c2238dc3f7a9af3dbbf65ca0135e8"
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
