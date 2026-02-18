class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.3.0/icm-x86_64-apple-darwin.tar.gz"
      sha256 "ddc54925a5823e03c2d9e1143ae8c1ee6695df51233859f05e76e904d2a3c82a"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.3.0/icm-aarch64-apple-darwin.tar.gz"
      sha256 "cd88b118668f488ea81fd81c8cc4e3c7bb0fc1f0e67b56ef93bef38433556e17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.3.0/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f982a677d2d82a0aa7af18a47c5ccd4988c1e210b33323d67eb9c54fd7368aee"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.3.0/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c180ef8b4b3eec40222df23b767cda550a14dfc64a4b92343c9ac5072c3a7730"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
