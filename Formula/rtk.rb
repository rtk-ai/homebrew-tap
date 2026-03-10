class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.28.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "5dede8ac36648960a3ad52611856b9047a7817b755750d2bdbda8d4e9931db4d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "5ce5dab3b744a6ecce7ff9deea9fd4606f72c6490c9ee447d74883d9393dcbc7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "9dbf6dd22cfdf8b85b916505a5e96e1721d7af4cbe2f3dc90b87c9d677d01636"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.2/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c7b61e87b8430e42b04ab84fbe1b3b41b563454b0181247fd04844b8e9194371"
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
