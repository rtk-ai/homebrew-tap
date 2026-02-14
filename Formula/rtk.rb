class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.16.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.16.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "a5567751040d4180edd2490155689276781ab224b82680e54ae23958f588fd9a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.16.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "09ede0c7863e408c8289e85eeaf58d8bf24deda8f34f643a854ddf6e0b093c95"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.16.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2e0f229324bfd5e399418444871441993ceb0e5e0917375973a7fcbc4f78d2fd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.16.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c184de097a89798b3bb16c4646869a39d500be86789abc7fd1ed60e439b3158e"
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
