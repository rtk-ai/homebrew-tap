class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.53"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.53/icm-x86_64-apple-darwin.tar.gz"
      sha256 "c694b76352e01af167bddc8764f780b1bf5bc1a40cf9fe35eee72a02ed01d286"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.53/icm-aarch64-apple-darwin.tar.gz"
      sha256 "d95f65a6708f5d1d40bc0ee019ce0a83bd3cef764b0bd211799fd3e9dbfa21de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.53/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a10b7f7592414a02cd7f85a873a727a7910dac0abf9bec10a775c73bacf0d49"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.53/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9672b179311785aa95aed5bdd72d32cb455705025ea9003a709f466fa6bfce2"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
