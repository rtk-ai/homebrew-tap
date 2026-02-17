class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.20.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.20.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "1ce394abffc16942dd9154f2d12bee4fdf5e3310c96d250aceb7e4a371d31d20"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.20.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "bc6583a249e7ea2d5834d729dcfd65c2a285c17f65e9448a43112bd94bbbb785"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.20.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8f4b95c82ab56d9d68da28e5dfb3baa365a960e07a8b043714bf1486acca1987"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.20.1/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6e641f0f39bc087cfdff01b42d05b6254ae8259e259339339919e1f896df1334"
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
