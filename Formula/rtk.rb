class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.39.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.39.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "0d140babfba54c37298b32e7b2ad1f21c72179b22bbcdf01c9cd66bb9ae28855"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.39.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "c3bb225d69c72a1a190f5d341b3958bf923c7242874627ef2d9f802d3743ff5c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.39.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "68fd34cbff46856826a092c261d67b1b80b579ef6c8a0400c0089e14325e709d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.39.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "06e582ba1996ef03e76a441b9896aba79dd1b746ce539d228296c681b1c5401c"
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
