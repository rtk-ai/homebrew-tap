class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.27.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "5cebcd9d577f6d84af1d959610c18f3c0b46b80957c2692614b8708faca42d4c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "9d7a3c136379806f1287b89295203b82129181dc6f23f86194d00b6b8dbaebe7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b216fe575607774c61a85a5d9134c6966872db4b67548631974087509c1dfbb1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.27.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "dd8e36e68d3ed73dbf7ef24f95174989b53b6d42fc3af05c830b7ab2d2606f6b"
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
