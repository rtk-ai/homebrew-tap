class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.27.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "af00b398b22166f6fb9492bbbed3ae46b41d34356e85c45f82c7656d76545110"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "7b9c6e3a5fb9578462a9bd265b91410357b5c2773a04e91355f9a1c2bb685b45"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "19bcf41bafe869955ac8fe0c5149a533a3ace416f246e3e21ddae0ac84a9e169"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c8f6c77a2332dcd5e08c7e3fa1bd850f756d0cecb329de5636cc0ebc56564e1b"
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
