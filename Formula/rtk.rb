class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "1.2.0"
  license all_of: ["Apache-2.0", "BUSL-1.1"]

  conflicts_with "rtk-oss", because: "both install the rtk binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "a2c411ffa49a8595b408c151ea47c9a812268924a76eaeecbc3a5065b02207ff"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "1484ae6fffd0da180d65434eeca32e014a86a6e21dcfc7a0004fe82b7bb0a9b9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.0/rtk-aarch64-unknown-linux-musl.tar.gz"
    sha256 "f91a06e94e5fad7dfa87946c811a4bcbc500e6da119fd47033f2a8940bf64f93"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v1.2.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "70fee7b4a548c43dde94c77e2335550981b0bc2fb013691d8c8109b5bd0eda37"
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
