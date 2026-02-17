class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.21.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.21.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "dfb7089f06de0895d8bca71476e1cb7030ed001df7eb06ff89d2af2e1b7d207d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.21.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "acefc80ffb5b69a45c9e23e237e0e86c9ed0cb4240c675e69a461d2d326a33a0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.21.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5cefb4bce993072dc392f0ef8839514c410c770294890bca6f71efb2603e5156"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.21.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2cf8dce024853b02ded812425fcf26a4306a951c202cc0dcebb890b44454c7ae"
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
