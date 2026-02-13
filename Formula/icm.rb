class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.2.0/icm-x86_64-apple-darwin.tar.gz"
      sha256 "e44016071145591b25e51be5b71cbcad77f2cae78b17a2a88789998284913b16"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.2.0/icm-aarch64-apple-darwin.tar.gz"
      sha256 "64bc937d963480cefbd0377d471ae5ed5a4ef2872302d097ef6802a8587d8688"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.2.0/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "133e23c881b4f439f3e61ecdbd779c276b01b2e6469e4304f7ed0ddf2e6a1400"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.2.0/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "109e610248819e46962ca90b4b6a29552736b7a23b4c5e872e28a8307eb967cf"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
