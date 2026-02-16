class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.19.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.19.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "e9abfa8f45718d7b51a4e5c6bf75f8c17131cffb36ec54377b3ba6c85539029a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.19.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "687b7f483cafffdc7bff0328fa7674affd296989aafb85f889ae9402c5c2b708"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.19.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2e87afe29235bf396777a7cae99cdfbb3c74c5bfc12f39dbcf182cfccd0106a4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.19.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2addc55e5e49a5a600400570f596868360d535bacac9bde9984541306fb0d57a"
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
