class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.42.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "401d72a80c0efc597ae9469f053ce51c70334ea427527464ab76f8e298da2447"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "6165d80f40db0f46f8af2ea15d0132e957e2717aa74507906c7ce5b3c20c655e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "32f4d78766e2f5b43756efce3c699dc4da8beef5296deb02fa7756f3257eb25c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.42.1/rtk-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a37ca300a42510a964453f2bc2e217769ef0872780af802db8a7d698f1da2465"
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
