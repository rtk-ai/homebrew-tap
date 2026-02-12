class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.14.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.14.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "fd19ca8844e709d456ece21e1dc6dab3518711ba8c3e6662b15457a8f2027264"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.14.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "6501dbb3135be81d061fd85eee3d8c56e39e168583a1d7626d481c83e9a85ee8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.14.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "bfacfc75a406214bcfd095eb0194bbfe8c31068748c1915ddd80803987d7aa48"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.14.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b8456c50f307e1a2251b7847694eb50e81a4941e3db08f0b232861439d4c8b93"
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
