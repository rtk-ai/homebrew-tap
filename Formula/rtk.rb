class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.17.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.17.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "53ebe956b4dbd4b700ac7f27d5055e0c58cf168fccc689601b215d9663901194"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.17.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "7699595996b867b137767b208c1834b3a148121f9a551072a3ef75b3de9191cc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.17.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3758b44f284e61d53cc6c14ca0199dfe10ff8974c5df89b1fe688cbe3beb8c9c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.17.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a05feb01590577326c92f12749f346ce2eddff59efe6e0aa7a45622fa69e19e0"
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
