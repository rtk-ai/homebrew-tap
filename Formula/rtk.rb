class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.22.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "0480ee038084055b2e113947ef6a45909e82c5bf0f424c7283a044d1082a93a5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "fe60e7bc660138d913e7643960dc95141cdb1269a663f3d29bf122837bd0cef5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "f24b32af6ed4d7be8c8d613f05e5274104f307f53e0f01aeacf2eaec2b1dfc7e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.22.1/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8f6aa5a5ebc751cdde42d702ca143f32a6c23725674418293ba25495bd60e088"
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
