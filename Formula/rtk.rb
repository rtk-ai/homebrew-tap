class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.48.0"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.48.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "4fa025cc93a744b6963f4e53a008e5ba3f74b6a38061f4a47c639e1c3023e0db"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.48.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "a95f2c23e08572dcc84ddff5fbe432e41e7f94369622eb086cca49ae0b6f61e8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.48.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5ed65486a96077bd6bba7c87fdc9d0e4a1918d19619be3c87380888389a30c7c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.48.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e4e650fa1677c0de2f6839a6040d7b17f312d32f163c402b75af70e9e5af1a91"
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
