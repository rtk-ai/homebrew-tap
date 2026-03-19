class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.31.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.31.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "af1d62a756415c1eac466bb3f1b0c6e6587a2574dea57d2f94924b91ece6412d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.31.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "f79b80dff6bce3592d0e422e683ecc060a6069fa581bb4c6a989617476d5f378"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.31.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8602e1e759dd7c67e3e4eb5f18ae81edc78405ba55a8fb10c638faf1306fee93"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.31.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b01211a7011e70e2746938e7d6b317053288bf8f606974bbb8893e9d9d8411e9"
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
