class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.45.0"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.45.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "064151cfc2d50b24d810b06a0af2e41b9c945e83534e4c438c3d3eae607fc3f4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.45.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "9ea02f889d5a2779e4fb700df4587824303c5a57cda22e903e30058079fca0ef"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.45.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "80a746dd305ef944ff50ef011ae4ce3878dd5ba88dfe35d859d05498191637c3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.45.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c4c036fbf181fc55ef329786c8c17e0d427972b053b825944d968a6aafef1ba4"
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
