class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.27.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "a765dc70bba4bad0e916ed2fdacb03cfd9d906a1ae94fc6b5eec97151dcc1a17"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "3e7737dd0fc988fb8bdc25aea931996410222009e7f5cc4200c8a63b1534107c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "6eb9ff8010e6694ef36f27d2fe264586a7ebe1e4e17d252f6af718396ad0487e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.2/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "862fb8430c9e36c04e521410f2c459545fc1a0690ba7168d3335ee8044df9084"
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
