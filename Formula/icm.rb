class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.12"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.12/icm-x86_64-apple-darwin.tar.gz"
      sha256 "2ff601797c9e95a4089d55d08545cc2bd59fd961916ef2e775979346646eadcb"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.12/icm-aarch64-apple-darwin.tar.gz"
      sha256 "0786c685e9270210aea3102c78f4ab0b05941f6c52bf2b682b6efff53ac52dbd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.12/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93980470ca2d9bc02354352292e5dac761be99889e4b14a45fb698b023485ecc"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.12/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8518bab7389e7e1720ba70cd58f56697558a8730b55242789dba124f1a7dc65"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
