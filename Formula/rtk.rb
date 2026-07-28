class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.44.1"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "a6a8bb086034a5d4f90ff93f965a631ad4937b5974494dd8a51859e3b04908a8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "52475adf4659e95b3560eac117e13bc6ab3320de8b8ce75ba4e7d5f3604613cf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ce97a94dbda556125fdbb22c94f538f93ae7dbc2b3de6f497bd60f206959c11c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.44.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "986f29704469b3d1051e2474105c6c75ab8b73651068dcd61612c1fb3938ad95"
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
