class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.33"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.33/icm-x86_64-apple-darwin.tar.gz"
      sha256 "f07ddebb477b51197023df275d79de148aca58267a4a84cb4a6dd4d0b46a8831"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.33/icm-aarch64-apple-darwin.tar.gz"
      sha256 "d6b4c3c3b2f98061eae89733ae4df1ecdc8d6bd08e3e4eb7c85a2cb497b07b7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.33/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0e1b21b52fe9261c942f9628b58c5439a6d48e1b1e77e6a89c27b7767dc0266"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.33/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a72e5431914c7a9a4879c9650e0bef508d5a528406f8ba1dc151fc4fdcd53644"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
