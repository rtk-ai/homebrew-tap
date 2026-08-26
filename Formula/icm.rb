class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.62"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.62/icm-x86_64-apple-darwin.tar.gz"
      sha256 "70686161bab3cb72520699593c93d56f7e7e44ad1b533464c42e131bdc0a4a74"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.62/icm-aarch64-apple-darwin.tar.gz"
      sha256 "5d4891e5a64a5fa3377e7f37d1a8a5d49aea1faa45bd3ecfa9613b8670f9348c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.62/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea3b39cc23d993861e00e8ae84e00ba4c6200be99f1f59b76dd46e765b137d5d"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.62/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e73d9ceeb98292c8fdbd36c7ab4957aa5430c5e9d06af7df10c1a65b3dfa884"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
