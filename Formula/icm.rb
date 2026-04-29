class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.30"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.30/icm-x86_64-apple-darwin.tar.gz"
      sha256 "dff66c15b60b89701e4548be57caba56f32fea75c73b3ff6e38fc83172a12b57"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.30/icm-aarch64-apple-darwin.tar.gz"
      sha256 "75a6f4721e55a3d6ced884eefdce690da50b541621acbf00072aa10156e886fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.30/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c59b0ff8b0b26d6d9f7138112729a22fbb9557c01ddf81a013abf9f95ac8a34"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.30/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63bcfc2fffda7ec34df696b1b30232c94930cf401a5d14cc9cb136b849f0d8dd"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
