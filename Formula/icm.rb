class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.41"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.41/icm-x86_64-apple-darwin.tar.gz"
      sha256 "c577181c16fdd797ba24a84feee071f405fc501ed66a91eaab61d9637e5d79bd"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.41/icm-aarch64-apple-darwin.tar.gz"
      sha256 "5aff26bdd0b3c0544a6ac67dd73ca42e2296acf73b0f8adc85bd0e7b433ab742"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.41/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7b65c1fb11239af229c6313493cc3dd7f086a9640841c186c4cf3ef41475506"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.41/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "caa3e68e6dc75e40cee39e88e615291b6768260e559d562ba7ee2fd578df6be4"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
