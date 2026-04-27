class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.28"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.28/icm-x86_64-apple-darwin.tar.gz"
      sha256 "1df8b58f65f52d49549a15dff3b094daa810c7908cab6f0907f98849b8262aef"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.28/icm-aarch64-apple-darwin.tar.gz"
      sha256 "2c5b31b6676ceab0614198acf04a005c34370813db06acaf25237c2a505d24d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.28/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "608d4ef2512d85256bbb1855e0647a36339372b88723bd581835af242fa7f2b3"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.28/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8365f0ee3d52bfcb27ddf520e327a680fa2e58eec24478a703da0f0366e068e7"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
