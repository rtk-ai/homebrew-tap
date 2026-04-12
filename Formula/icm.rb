class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.23"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.23/icm-x86_64-apple-darwin.tar.gz"
      sha256 "b643f426d625bc2a82f0de6469f5d2533c2e3710e8cbb5c511999e7ded40bcf9"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.23/icm-aarch64-apple-darwin.tar.gz"
      sha256 "b10be5af1b47caff22e148d5203eb462cb8b938d38bf2ecee46001e769f9262c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.23/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c759b0e2ae386bed065cc47cd9cb44ae25b4aacd9e40a71ef05647d09da1eb93"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.23/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9b35b9af931ba2dbfce075fd18840ad0ec59108058625f3cd49d84f63db454a"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
