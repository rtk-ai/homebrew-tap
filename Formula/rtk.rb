class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.42.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "cddc9cd11cdf80b3342eebaba0e6ab26d9c8dec45295ea44cf98062987185724"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "3b1b9f13548599ae9d920f5e3169cc402db1930044ea24e0be4e236b7f072a99"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "62bb749df1ed64f09149998c31de864932f047a1be4e0f882a8ceada849e0871"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "cdd4f87ac97ce958f71b53a991880d6adcc41cc5bca1044175a64630980152be"
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
