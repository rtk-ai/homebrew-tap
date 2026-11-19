class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "1.2.1"
  license all_of: ["Apache-2.0", "BUSL-1.1"]

  conflicts_with "rtk-oss", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "3bc2a92f1d3e404ef99c200cddcc0f4917d6c4ed5b127a751938a96f57d4ed9a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "107e272253c0aa36c9c85fbf9dd188bdb58d86c6ba9a85b49122420baf6e4c5c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.1/rtk-aarch64-unknown-linux-musl.tar.gz"
    sha256 "cae1a911eda9e898dbb90039436e9d53922b20afb1e3e4ae341f749eb62b7781"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "75f64525711be935657a6b228d929c24bd9d1ab7d640ea374a8b913e5b5bac05"
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
