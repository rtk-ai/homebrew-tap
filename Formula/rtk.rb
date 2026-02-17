class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.21.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.21.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "4a7a76c07c99738c52fe369ca2b2262aa89ff0d5ac05e0be5414c6b578a93033"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.21.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "86c68e80237371b9da0a924212adf490aabfdb132ff3fba8b239bedcc613019d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.21.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "67307e529e26b3ed16672b30d790ec3b16a6feed127f1c8555ed2b856a2c3a32"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk/releases/download/v0.21.1/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4d9a213d776c101b84a9866f75ca48b3e5684b38cb1b805d4490744f26324081"
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
