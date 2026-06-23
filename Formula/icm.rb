class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.56"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.56/icm-x86_64-apple-darwin.tar.gz"
      sha256 "ddc04fa15f5c78188b491eac01be7124e5888878f0ca328b679da66074808ae5"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.56/icm-aarch64-apple-darwin.tar.gz"
      sha256 "d3776bad836a339dd36a171e1a470fa66f3aaac2b849490811508f694e62098c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.56/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53e9ff8af9227a7629200c305a45557449be46d7f2379f3c82242b2c6b99da1c"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.56/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b376dea60a150df43a191ed56f42df487edfcd7449e07f4230f3ac9d615dd4bb"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
