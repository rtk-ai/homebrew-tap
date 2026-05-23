class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.50"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.50/icm-x86_64-apple-darwin.tar.gz"
      sha256 "557db6fb494fc4a7177aeea55e17e3d7bde11ae9f3b0c02196292d5bfea9824d"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.50/icm-aarch64-apple-darwin.tar.gz"
      sha256 "6bfd7893119c16661c97ef402ad2f7b1671ec31a35cd51b70c69677f65e0b37c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.50/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fb646de722bc0f2e0cafdc5438d9f1fb5bcfe9546e5625785979d63962596f3"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.50/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0899fb47b747df2395ed202de1baae8c6093d81d2401ff2c2076255e252e0bea"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
