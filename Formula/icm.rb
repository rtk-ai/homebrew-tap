class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.8/icm-x86_64-apple-darwin.tar.gz"
      sha256 "a5a31c254f6bd72a86e386de1bd27facd078c10341f839d7d62758f9a356eff9"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.8/icm-aarch64-apple-darwin.tar.gz"
      sha256 "af36efd19e02dac474e29524e05bc366db589129acacac83341e57ba9620bc92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.8/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8b287924e40934c13487dc13ac386ffc1031b75968c051fe6619941fc068e0f"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.8/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0799b0879ee2568239e77c75a56e1c715da1a95c8be02a2a3f3af4a604f58fb"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
