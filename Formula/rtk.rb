class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.28.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "da374c11e66480f35e24c1128fb649de26b767637efeb928e90333c140bf1ce0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "bffe406520efd5c4915ac8b915f7b0153d1b8e1482cf829eeb9a10097f38c0ba"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0e64135a071216be5fbeb7e1c1fa3c891f0a2048aae1175773c752168bef25b7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.28.0/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9bd4a4de833b838cbe79c446456bea7699772d89e13ea99294295ca6fcc5c740"
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
