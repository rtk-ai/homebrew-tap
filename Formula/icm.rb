class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.52"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.52/icm-x86_64-apple-darwin.tar.gz"
      sha256 "115488dfc2314fd60bb7f4609be1ac6698b934b9965b6cfc7f2d35d52da405b6"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.52/icm-aarch64-apple-darwin.tar.gz"
      sha256 "1eb06bf25ec002d22512ac7ddd1fecef14b8ff8fa3a471bb31be09566e9e4b64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.52/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99d234b9f8f3c652d8c04d901e22ffbb1c88dfe85fa16f803211ea30c91704de"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.52/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e976a8aa2e4ad786ccdb6feeaf18ee842281aed3019f9af817ce9c8c5ee26bd"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
