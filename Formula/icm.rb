class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.49"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.49/icm-x86_64-apple-darwin.tar.gz"
      sha256 "5064898b9dcf359244e2a860aaeb75bc344ec1da8416641e5e16c353a100a353"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.49/icm-aarch64-apple-darwin.tar.gz"
      sha256 "dca19fd5ccdec9990ba995c16316ece0bbc9e748c2e410b002a3d22bbca627a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.49/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "104d0d3115f72daa9271352d5a47024b68e7322209798f58ad0fb8e143088f9e"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.49/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "614fc3281193516c5b1d5a69bb541861292a4e8d74e3362b9c9789eccd56c88e"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
