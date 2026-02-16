class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.18.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.18.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "6b28f67bd26fa1a1722779c848d9b810f91f15770de4ffe70e0f421edf1ee1eb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.18.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "0f159ec1a4040932322db11f0a1b8791bf644f7556bf11772a01fab18649bbab"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.18.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "647d2da91e9a8c3e39365d2ad5cd6948170d8241c1df0df68d22bb21c6a29938"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.18.1/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5e84e26b92bc6f4d0ecdc2980ae7f0c7c0299004b7d43c540a91925348c5b364"
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
