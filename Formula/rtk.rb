class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.38.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.38.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "3896c8c43d02641ddaad88e91a9569233f35e4e938a3bf7882656dc73928f97a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.38.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "f05bf6258239898cf57467fb043799527ebe3d5258e93f290f84c8b7f410e359"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.38.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2e171f1d1c76086bb447e372d9332869d2cd3cc106c08c6e5fbd102b12e91ad9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.38.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9bafb356450fb0f66a7f2d68d0468d1b1e270163f1620574e67a4c8f816d9610"
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
