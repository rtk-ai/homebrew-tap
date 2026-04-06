class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.35.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.35.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "ef5b44b9da3d62f4ee7a7bd8225d331e6621e42923af2b358b365164b08450c3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.35.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "bfe6d4da6bdd52a220d34569e9047e41e1bdc7be8cb411c2b6232225db301351"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.35.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5c56da491a9a1f9f395ca4beacec084d113785a5b194f0e8f2aa53b4fd1332c3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.35.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "30c852a6f415a8a270aaa333c614bb02dfd0d60bc57af382f5bb44c3b61a6ff9"
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
