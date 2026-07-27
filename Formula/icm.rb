class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.60"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.60/icm-x86_64-apple-darwin.tar.gz"
      sha256 "c3541b23bbe015b9098cc74219be73d823940b10db6276e71e7b572c7c2bd5a4"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.60/icm-aarch64-apple-darwin.tar.gz"
      sha256 "6cc8e89bcb96c82fcd854908262d37496e8ea4e91da7e7b0e3b5b6b9fdd23ec7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.60/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57fef0d89e4f9168c8f8e914a7c1fb37db0a8a8c00087f133eedc68d5ff43f3b"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.60/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd1b9763b1c40d675f82f74e9fa6b3ddd36b46d34945f1b162577f13ec74d4f4"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
