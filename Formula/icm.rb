class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.36"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.36/icm-x86_64-apple-darwin.tar.gz"
      sha256 "55cedb8b7b666c4ca291b3f253fe6d31bba94ade6bff8934468e31850ac4f6bd"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.36/icm-aarch64-apple-darwin.tar.gz"
      sha256 "a5162c52591b670564f0853b1c9d6aceef730eafbd2537f50f5f668d79f11a98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.36/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d77dbe7d10bcbe20c69d0f091a9aea159d4133fff4253d4f5db8e1d73e96efa"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.36/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd51f30d5132bdb3c86b515a56d16889a6b5c1d4b2a82652dd55e656775da526"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
