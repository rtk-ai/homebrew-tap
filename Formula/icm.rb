class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.44"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.44/icm-x86_64-apple-darwin.tar.gz"
      sha256 "cb27766ca7030648a941676abe54f7119cc8dd1d6afadc9c6f1d9729d7f5c74f"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.44/icm-aarch64-apple-darwin.tar.gz"
      sha256 "5dce6051130d580c5b8848f147251a0c9f5905312d1f26fd13830124b1bb62b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.44/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eeda4a493989cf22d41eda160d4a4e264230641b5b94f743360f0397ea73a506"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.44/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30196043ce05272aeeeb0a2fa861ae8d9f5650ccdf298351f968e9d10df2b1fa"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
