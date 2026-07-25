class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.59"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.59/icm-x86_64-apple-darwin.tar.gz"
      sha256 "2664a2dacdceecc4a6d78a59c4a5c1704740b8bd9aac304dd4279c77e62303c5"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.59/icm-aarch64-apple-darwin.tar.gz"
      sha256 "46ae5c6d6878e78ddf794dee1d096421fb9c9c69bf9d944c85bf39e018ad1674"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.59/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16197d023de98ed7c8e861a5d2c197e10c865df74d4cdae2afb4edd13fc518bd"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.59/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afe69270db0067d8f74d693ee62351a13b560fa02a646a3b23e7a2396665c978"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
