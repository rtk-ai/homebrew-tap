class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.29"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.29/icm-x86_64-apple-darwin.tar.gz"
      sha256 "52737938b5d1740e83b9ed32d95134288b0faa9f1d1a441c666e6e72eedb4f6f"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.29/icm-aarch64-apple-darwin.tar.gz"
      sha256 "eaa9f51bbfb518abe96f060cf278b8b7563e530d853f8af0234ff5572f489f84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.29/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f225dbb401b233fc2918d248925c9da2b54e552d778dd31f1c62f05ebc27f0a"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.29/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c5d011bbb5038585ebd3693e8d2c0ca0d4cbede0fab5399a8902661eb1218b0"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
