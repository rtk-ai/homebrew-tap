class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.16"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.16/icm-x86_64-apple-darwin.tar.gz"
      sha256 "930a364042fe1007eb709ab8cd25814dbd8766a8e5f177289608105818347fa7"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.16/icm-aarch64-apple-darwin.tar.gz"
      sha256 "6dd642eae8c113a074c80fd494ec809fa4cf8cad69e8866456c0405c9ce2cf65"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.16/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4febb35a40569c229ff8246c74f4de335d219b5325437445415f328a1f81f48"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.16/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38852d329390e6e774a189b1630af7ef38ea1ddb324981d88043f7b7950991d9"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
