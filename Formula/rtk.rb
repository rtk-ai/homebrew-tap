class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.26.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.26.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "231346863de55e1f3942c6e1d7fc02a34cc0400c979f437264aaa55c7f09d10b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.26.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "719d897a39f9d1cfd4a071054900af1695851fe2e39104cfc9cf70beaa13e529"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.26.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "4fd514853f65e9b2e26f099876046a66b231c3afd25921b409bdcb5f59e6fff5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.26.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "34958c64fe703402012b614d0343a5c3ee229ae72f95e3a9153f2ab8497128bc"
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
