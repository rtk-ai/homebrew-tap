class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.57"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.57/icm-x86_64-apple-darwin.tar.gz"
      sha256 "e969772684aec27fde8b4a6051a4b5cc19a98ee6d36dd6e85161ff7508a6b2d0"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.57/icm-aarch64-apple-darwin.tar.gz"
      sha256 "0f3134f4826678419947d4ac47e28b520eb1874d1198ef5b50dc06c7bfe89642"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.57/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70c721b5298ea0e4fc63d0a8be1a5a358dde32f020f7df5a4fea2633677a5240"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.57/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb1f1f4cc2200ede330c801f39403facc014281504f1fe094acdc7863ebf5a86"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
