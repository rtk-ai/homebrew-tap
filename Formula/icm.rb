class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.32"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.32/icm-x86_64-apple-darwin.tar.gz"
      sha256 "dc2c15c4ba78f224ea937239bfcd23ebf106b86cc94dca75779021dd23e7052a"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.32/icm-aarch64-apple-darwin.tar.gz"
      sha256 "7e8c45166b506ea75b1966f537be2e379cff0e24b0f1938520dee823f368b134"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.32/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34440a4a6786863ab7fe2dffc8964321e40a9b9cd416e9f714d1822f9eb4d1ef"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.32/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecab0cba5a5a807873a8e02ad4e29d3c250250f086bc3298741a90657b161aca"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
