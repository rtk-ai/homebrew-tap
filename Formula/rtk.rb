class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.23.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.23.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "ba9927ff53193aae857f87be82abd5330a2a77b6a73f966722e353aa2bd4a723"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.23.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "b483d2bf5b96bb444c72cd6b6248e7c477208f1b2c012c2409723940855c29a9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.23.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "49beb391151f696e0b30c60593cf571afed9ba4e868656633200a8b10bd3c482"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.23.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "d19762b5e4aec8f13d5da25631f03bc6ac672d5fec8d67dff704e8c92182e2c9"
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
