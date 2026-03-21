class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.4/icm-x86_64-apple-darwin.tar.gz"
      sha256 "b1636118d3449d3fb82f94c39f2a4f3c208949076f914b82565d5d5995e15dae"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.4/icm-aarch64-apple-darwin.tar.gz"
      sha256 "85768a5076d6ffe814548236f9499402c86fec70305bc381385d20ef9a88e3fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.4/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33da11c024db8abf5ee4dc6eb2fcba6bf4b9635c5b223d4795cc7b3066c19b7c"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.4/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41a0a6824235bc82eb626a56e5722e7fffef03e7181ffa25cf9919c6c8b6b2b4"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
