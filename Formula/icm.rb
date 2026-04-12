class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.22"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.22/icm-x86_64-apple-darwin.tar.gz"
      sha256 "758cf47cff9dd3e34eaaf86a47f8bbe6dfd73735f0f1dee4a0462a05b453f6ca"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.22/icm-aarch64-apple-darwin.tar.gz"
      sha256 "f4aa38e851a3ef0eb949d30709b93531b7c60662898e877cd9394f481f27ee9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.22/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e88329d481cc193bf0ee193e2eb24cba5f76f2dee2862bfcf68f06ac906533fd"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.22/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac07bfaf1ee463921f0c898acccb2c8a6c29f6d9fe1e00a9b7bd41ba99bb7a0e"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
