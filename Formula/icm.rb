class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.15"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.15/icm-x86_64-apple-darwin.tar.gz"
      sha256 "3cde115c1af77ac6a47f059c889e7da1fa6811bec87f705ef0c293a62856d67e"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.15/icm-aarch64-apple-darwin.tar.gz"
      sha256 "b59f63ed825c56b340e11d4274c4e72bfa729aeac1277312847923815ecaaee9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.15/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45b5d90a57185fd6f09c6154e1372b2d79781e718730c280f4a1ba23bcd240bf"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.15/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56e15e06823a8de49afa2e0ed79364be90f9c68f30506c859deeaecdd9cb2060"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
