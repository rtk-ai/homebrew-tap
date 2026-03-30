class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.34.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "dd982d9cb0d852fed724b7f5a7e0f25d6a665eeb9470b0caebfd76076b3b9b41"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "6b7a34134a642a3de2066b1df85a98d813b52f84cbdf5fefa834c61c2d3edbf5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "fc168635cf65715dae5cb4f11cd76044b4c824702d50c328070b78ab31fb6c51"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.2/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "419b38216c8b1249cc72386d4bbcfe9e7808bde0af63159c826438da534f9e59"
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
