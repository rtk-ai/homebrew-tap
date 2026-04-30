class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.37"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.37/icm-x86_64-apple-darwin.tar.gz"
      sha256 "cf07da8c8fb006df016924d1c9f333330270ab365aee4dd274c10d77a1b908d6"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.37/icm-aarch64-apple-darwin.tar.gz"
      sha256 "2d6c145194277a0c5054e4451894e14066a4324c1c80a72181de1e4111527a95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.37/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d097bbcb3aa5db240eab93ceff8abdf9676ef9efdde9d55be2483dcde4bf5f2"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.37/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f33443b7280f7e092bb653ba30d9578a368e1aee3df0a6e08e3056a6cf363eac"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
