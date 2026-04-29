class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.31"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.31/icm-x86_64-apple-darwin.tar.gz"
      sha256 "dc8667e6e58d13a5bf70a346518a47f10a95b04150d83d0d99d989f5390aad38"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.31/icm-aarch64-apple-darwin.tar.gz"
      sha256 "e2c52ff9eb2c746cbf755ed90c0473bc265b3aa391338777c2a2c141f9effe7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.31/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c8b44caf1cf58b1aaf167265475015c7aed5a4847c897ff04c832728c653921"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.31/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5222a92f8512ab9ce8a998021a9669d966fe4ba11b0e46dcd01e0b0c8a45eb8f"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
