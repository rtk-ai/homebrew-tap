class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.53"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.53/icm-x86_64-apple-darwin.tar.gz"
      sha256 "c6dd80340931177660f17f811a711d072fcb2db96e5fb82f4a45bb7f13df0fd1"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.53/icm-aarch64-apple-darwin.tar.gz"
      sha256 "612213f61564c2db60f17bb657c6c5496a649e1c98200580eca5e5bdae14cb2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.53/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a860fa87d2f79c6111b831e6bbfa69e32d2e9eed45d3360a6c287018e93f24d3"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.53/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a3ce53f8f754ad4b67268f7354c7c9b106907cb8aa7c242eec76cce323d040a"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
