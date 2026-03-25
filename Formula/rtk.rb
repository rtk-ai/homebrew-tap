class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.33"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/0.33/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "ec4ccba6b6c105abcdfd4ae7ddb3b816e00b8b8234441ad7bc44a8c6190efd99"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/0.33/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "2e7ee0da3ed7f8fcb2a777b5ce51fcb1227ae12a3513bcf6b43e7b0f971b9eab"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/0.33/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2cb0df2b1458176eb30d4dbe1183b59c4173ded60b65a270569567081d25fb9e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/0.33/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "17783d344c4fe02aef68b4644bacb1b08d8f7a8f6c0b4d6a1b5697804c24ab2b"
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
