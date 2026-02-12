class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.15.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "0665b95a6eb9830f2790e487d0b019cba058d9f07d4fff8dcdccb29d474d2718"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "ecfdc66bcc03c3a7e30cba5dd3d04d89f2b5a570a60052cc79ae973a2139e158"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "965fa2026b61608e276488304e8f2244a42d54ef09e3af05079058e8a88f270d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.15.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d8df2cbb08288b70221441dd7dd626422c20d9f7f8f3374258e05d6dc80e9917"
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
