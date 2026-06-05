class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.42.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "5a3b294d6886465bf91ceb9d71c146b7f6d85b1c204897d2ef9297c5105867d4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "f9ee5ce7baf037bdf69ec0ff54e9acd80490f3432b2cd3349b3cd7aaddaafc4f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0e51b8a4b2fdd72c24b6c103459c7ff412b5f8d67e10ec3e67d1fff42db70e8a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.2/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "17ae2592fe6dcfc62d0bc4faea89ce520d818801581ff0a8394335f72c91154d"
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
