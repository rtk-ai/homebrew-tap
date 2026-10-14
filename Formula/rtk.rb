class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "1.0.1"
  license all_of: ["Apache-2.0", "BUSL-1.1"]

  conflicts_with "rtk-oss", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "4aae2f60cfc49c9e81b8c8c57020aa0cb824da608c78b4f0cf5c0988e19e824e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "4b716b2f45d677de41c99f77d9a71199ad060b98ec2f78ef712885312b3a6578"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "cd627c4091ad90b5e5aca83ca5af66ee4b8aa8537a736533fa90544f461f1c2b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.0.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5b919c3bccb799b67a61866d0e617410a4fcdf173e2614440e59de2fa2003436"
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
