class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.35"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.35/icm-x86_64-apple-darwin.tar.gz"
      sha256 "59dfa694ecb93c62373eff222bd0a1968ada448b5418108b5276ec1c0a559636"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.35/icm-aarch64-apple-darwin.tar.gz"
      sha256 "3322fa3ab40551aa05b60dea011bbadfdab80e539aeb7edd64b78cab29d5e0c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.35/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "303e86c0e51d25f157c25d43a4ae65b75170ffb9e28bac98a49ccf2b319aaf83"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.35/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f755a05df9804bd763b5f9f3598e8143195d112425e30e306fd6c55898d1a21"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
