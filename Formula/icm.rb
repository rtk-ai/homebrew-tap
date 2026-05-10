class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.46"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.46/icm-x86_64-apple-darwin.tar.gz"
      sha256 "1fd6a8f50b5533ed725cd191a1c12befafb85495958d42fbbb45ff973119e69d"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.46/icm-aarch64-apple-darwin.tar.gz"
      sha256 "d2b6169d7b3821ac4943e602a03a132f34cdc6466d199772ff3a2b21aafdbdd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.46/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "407e8d66d87b26598f7458faf7ec2aa2363d99b0c2dec4245b8d07afcfaff8f2"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.46/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4ba0bafa9c224bbe94eb4aa2e48df2217f14567236accd94455fdf65be3105a"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
