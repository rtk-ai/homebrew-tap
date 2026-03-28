class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.34.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "6223d70d5d9ba740d196dd08439a94644905fa4df15954165d99b5b924d02927"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "c3801ff4a9e5a23549a163aa1c0c115dd3b4d141c767bf0813ec18b944f701bb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e43c5d490661be94063078f5e938700450afe6f8925be0bad466fc2d933df5d0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.34.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "78bd7aed073c9d79c4f62fb111cbf8358e33c0c30e7eea301fbb8b5fd8656ff7"
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
