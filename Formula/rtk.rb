class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.49.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.49.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "bbbfebabb22686993a80da731aa4d5d35116fb8ae24abb00608efa028e13ae01"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.49.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "d297388f4a8a786e79abe5f55b80451725bfe8c5835b4736c05d7cff4d68f627"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.49.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "c8ea4b6560841e73157c134fd4a3293914c6ede42e786ee985cf491fde691ba7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.49.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7278231dfd7e6a730a4ab7f847b195bcf02289c2d57622b0dab75a6411100c8f"
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
