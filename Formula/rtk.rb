class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.22.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "17642a3fc5a304275ede363e3d20fb8355f9bc9a23f89042e68d039d62c6da5a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "34792c7f49d84357e7953ddcea065776c5952a82d874d536d00b2bc184e6c485"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b0fbe630004a67f99b10d0a5fea977dc7cc3067cb4dfb53ea35362a58aeb51d0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.2/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e6122ede16d4bcad2954db0f6a923a29ba6f75caeabdaaa6c8fa9e1d7c826da8"
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
