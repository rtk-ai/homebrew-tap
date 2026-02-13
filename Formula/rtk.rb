class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.15.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "ab9bc2f3972e7a18fc9c6618c88c56e50b8f915b485ced10fa4927fd54b54b3c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "a1f1992b459307ce5ed3c9503543ad23d20ae382c8cac61240bd7bb64a223a7c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b980c09c2e80a27e4381dcfff29871d1b0b8606cdb3cbf613f686220bb78faa4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.2/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8feb2309515655f882fa96a25c3907822f5503e702914e199874285d7c57c07e"
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
