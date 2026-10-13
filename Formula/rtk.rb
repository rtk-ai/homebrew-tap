class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.52.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.52.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "49ac56bc5edd58ce0c03bf7cc137f8cf2a6253e7707b8236e07321ad66cdc043"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.52.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "81748ec5557b21965097531653fc5198bf734cdf240484816f6d9cfa9e816034"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.52.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b1de881a0381f1f059ce9dbb0cfb97e0f94f22460965f39aaff77b2956024fa9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.52.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "46765d4e570ccb3d759e95bcec11feb42fceed5ab2453eac8d787f81d4a0cdab"
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
