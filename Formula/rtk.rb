class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.28.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "71e7c008c7cbcc3271dff7dbd00df97c62cb68ba5c697465111f49b69fd7beb8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "1eee30122f164f3a2475310eddfabcd3694aea6c75e16e79c759b70507b8681f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0d5d4ea54fa4f3e4db882ed6c85a473debc77e257f50d18a7c5424efada9e432"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a9dd6a7f20e87fadd71683db4e12cb846b947ab8a6ab4bc33e5ee0f534cbefd3"
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
