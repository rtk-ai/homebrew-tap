class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.10/icm-x86_64-apple-darwin.tar.gz"
      sha256 "bde965a54526e96110fce1a88aa318406404877176aec48794f981063a421f46"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.10/icm-aarch64-apple-darwin.tar.gz"
      sha256 "b69776ce32eae02c829c76be5d5a88208bf8a784eb0bf1fdfcd50121f74407a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.10/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50ea143487d3bac984208bbcf1e111b0680794a123bf8e57cfb34d286f085ba6"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.10/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be45fb67d90c5e9aad576f6fe7bc3b64edf7816d2a4335396adcb7ab6037092c"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
