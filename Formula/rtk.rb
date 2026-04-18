class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.37.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.37.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "194c210208f192e8da11173b705825a8dca372f3bddeff812992ffdc8e38b8ce"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.37.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "dd201984b7533d42410031625a6a347e9bb24b8bfcc5ba6ce2c9908899abf4e2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.37.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "cdd08572a3ef1a58a3f69b5d17a6d7f584285c46c4a820de6cc16ff42c9d53cf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.37.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f9aa033ec7146e552457f6231d706c0c42e5fdb77d836bc4c98ae24b2930d33e"
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
