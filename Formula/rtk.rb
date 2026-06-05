class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.42.3"
  license "Apache 2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.3/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "d47823afb25919e4e60838c5622e88ffa6536bc0b36a34a3f928bdccac40f614"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.3/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "7c72d05cfc71b7e2f20755b3754b728acecc7c0b1fbbb08757828f9e7bedd81a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.3/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2b7fa09d06f8dbf334c55482fad2e7ce4a1f8564bc9ed1f65d9f5992db8e5527"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.3/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5df764a633709cb85d248258d085d24ec95faa8bca0e6835a93cd57cadc4eb9e"
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
