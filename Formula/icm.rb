class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.34"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.34/icm-x86_64-apple-darwin.tar.gz"
      sha256 "51e5d57ead91421d53ef6f0d0a6d59e5c3ec3483882f4d0cb4c441aae9d66a15"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.34/icm-aarch64-apple-darwin.tar.gz"
      sha256 "ef0e500fd58d3a7251459926b9e5867204a7f7026428cf29f166b1f062541fa4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.34/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22e1d2a4664a089eddff24792569aa8604331431d0080bddde8044b4bdadc54a"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.34/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ee776264f63811011c1c024140fcb517221665d1afabeb0f0d737cf0f9df9c4"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
