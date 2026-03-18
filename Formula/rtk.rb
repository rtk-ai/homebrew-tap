class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.30.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.30.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "e7f5ce09aa8f6b3347c1be708a1850927520e33c2a24cdadf04b2ff68fb6b76c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.30.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "c542de2cdf332b8c18f40d65fc96631b4417ee03273b543ae1f56747aa6d3f57"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.30.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "66f5661b1b475c0e9fdacea345ad30532d907d66a5a81d612bfd873d6cac6fba"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.30.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "76aba547faf3c7210f2cdf145078e69e46fb5e5d9e29c2e04067c15c372bf4d7"
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
