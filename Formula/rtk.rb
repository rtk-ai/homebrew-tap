class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.25.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.25.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "27d533a0bc78c7f74399e2677820381f686f6bd185e584a032fc8e8b92ad5118"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.25.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "19a6d613c046bee508b807a74db58605e6c57cec4edf52fe456ddd6961ad5018"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.25.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ffbd03b65b9ccd84b4eb78770ed2bb6c6cfd552952dc25c05f4c2962008adbb6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.25.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a41ffaa377e1111629d90870b7e4f174581ec5bcb5c5b622bc337acfe0a6ff7c"
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
