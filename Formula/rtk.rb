class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.33.0-rc.54"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.0-rc.54/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "38b3776cdac5a7266f769720dda402d35a737f66ac72f7f6cacb19e471661c3e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.0-rc.54/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "9dcb0b5125c0e7abb1434b144743bed85c7e3770740d001713d6b066428a0878"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.0-rc.54/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5dace7d667d49a4910bec26bd53dfec4e0cd258468ba144da5349de09f97ae0f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.0-rc.54/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4d6da4303a608ac77b4806ef388adea1b4fe0851cc2d850bfc7dbec250636150"
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
