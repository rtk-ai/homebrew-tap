class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.36.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.36.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "d80041c5773b4a0981d186a87f37b1543cba41cf1d1f53d3b5f2165c8d16f1e2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.36.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "5a874af307fa768ea0e30fbc1f35f26be8108f076da3aea2836bb3a6f99e5dcf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.36.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ec0cc96a6e483399943d7c9948196716d04de7ee4a1b07fe7bafe2b183197826"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.36.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2d428ce344734df95e0933f01f30a2d694fad470de39d8c5186b89eb707aac26"
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
