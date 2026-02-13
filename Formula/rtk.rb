class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.15.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.3/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "0a326bdfafcf74a2981e12271766009e00d8fecebf8393ec069011f8dde2a95c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.3/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "1e768a864a6b92ecdf69ebfe92b91d8cc365eca8b712d341061d9a1c6e1ae3fc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.3/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e7622b1e9f1ca6688ca030d7c34326b150abaf2fadfc3c9e652068f7fbaf8551"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.3/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8cc13e8a123d08f3bca400eb16681adde2f86e095a20b8f09bda6bdd2259fdc0"
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
