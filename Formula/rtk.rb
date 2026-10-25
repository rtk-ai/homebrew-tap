class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "1.1.0"
  license all_of: ["Apache-2.0", "BUSL-1.1"]

  conflicts_with "rtk-oss", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.1.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "8da773b0954cf90b115ec95c4e4eb420f04c39de233c5db102246a6caf073ba7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.1.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "1e23e8b9542b58428e6409c49b1c3fb92c4c0d5125da72e80f002a46086a6c20"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.1.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "a5c00c3ab0129884bcb757d348afc1a650efa0f4f0769da97c341f28f89719ed"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.1.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9454ad1b9489daa57ab0a9f4ebe2faaf4dc82b8a0f26c9e5135151abd7c9378d"
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
