class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.10/icm-x86_64-apple-darwin.tar.gz"
      sha256 "2b66f83e1d09b623bd902df4483bd193c0794c8e57764ddb1ca282315f7ba1f1"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.10/icm-aarch64-apple-darwin.tar.gz"
      sha256 "28f59975909072fafcf714d2c9e3ce5d15fef7bf07b7c099fbbda7adc8e16e5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.10/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a1ff49a89e22b423af3057ea53322175994685fddeac4d0d0645917477931a6"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.10/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "837fae5e73226f6675a48bfc237a8762e9e43380d008a80217eb002b347c3205"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
