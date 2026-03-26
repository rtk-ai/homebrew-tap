class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.34.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "9559c96032bd99155bfd480afb4aedc170744ba87d959dda40b8981dc542877b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "626c7f139542cafddd2fd5b630b0b1d580db1ff98a93d0c499fa6712969fdc68"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "c340ad2be037c7257bf177317f7fb38956c0c3179990d63a73dbcb3291f0611e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a3d9dcb3866fa3a6cc795dc0fed87c88e38857b462ff369603fb0f689049ca08"
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
