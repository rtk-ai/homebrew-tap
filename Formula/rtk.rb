class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.46.0"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.46.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "484e5dd2b4bfdbbb910727a0ba1e2d63b2e23efa922cfcc7300fd131bca3e10a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.46.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "67eb651fa9cfc4a4ea65876242eb71b8837abdac40521d0dd363214ec1a068dd"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.46.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e8c2e1787f46017ea7c5a711b2bc6a7f7cf61c7ad69385b4c1e4daff1135dcd1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.46.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "79aa5b89c69566bbfeceb66c8a27cfbe52237fc7ee3e683115f43745a3262d21"
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
