class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.40.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.40.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "60c2c325b4edf0367cfa9716ac2e2c888abcd065eff45d01510da6561ab82e3c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.40.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "8eac502fb812056973da2a8c2f0c00e1427ba5f71bd14c01520bc540630cb98a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.40.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1d0087ad62a182c0833c2251ac678b5e05356418d91aa57305ac51a126c9b102"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.40.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a75d210a445874106bc16da2b4efba01d36d297afa33ec134728f2d5f42ef5af"
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
