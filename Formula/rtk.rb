class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.22.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "525a3bf1316f13893f2a9314e4feddf270df196f3f26bcc8e556633c06f27a80"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "58f169d608d87ee26a342d0627c9e500ccb03769d2303976782b93714437c343"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "308b5eb49959c5b6eba84d5d16a89e76e8c2fb12ed2731f35b33ca8072a249d8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "579db511880c966b037532dd40499f4e25647e031f0a6a7d415d055c956e38e6"
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
