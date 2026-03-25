class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.33.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "4de8826d2f8d268b16829eb2498f39d4c2fb069d447256a6ff2797a519e1c019"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "14d0404ceec344094a5d24896b7a74966810ee6f566885c31f720b6a762a9d7d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b26ce319fa27596376fd29eab8340ff62ca1066f773904e7d4ce154be81bcdb7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.33.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3fff5cf514bb89f3c286ede0a0b83db3515e370e3dc853258b151aeb4a6f5d00"
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
