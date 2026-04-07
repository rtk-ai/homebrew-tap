class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.11"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.11/icm-x86_64-apple-darwin.tar.gz"
      sha256 "183ab13a8e698a7edf778c16cb79cd65baad6efd287a98a0f251d07eab14486f"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.11/icm-aarch64-apple-darwin.tar.gz"
      sha256 "6cb3916a7ce363fb19b0e0711711571f2b4dc8016a48735f08f88027cd0ebab4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.11/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9769037c32a77a7669d5d62630e1d737df3b33cfff910e78029736f22e2a473"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.11/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae5af0796d0481dfdaa30e921827c6e75863a859220df9e9c8a690fdbf76fa37"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
