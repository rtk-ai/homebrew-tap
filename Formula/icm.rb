class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.62"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.62/icm-x86_64-apple-darwin.tar.gz"
      sha256 "2582b85fa6bd8b0d69861176ee4990394c57c87790101394a800bef4bcd260e3"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.62/icm-aarch64-apple-darwin.tar.gz"
      sha256 "672c79d44b3b18b08d42cf5f26f63164d1db315b253ab9565c93e426b379b3d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.62/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ea6bcba6cd2a953bce6bd6cd518828faf390756658350eaf42ee21f7210bc4a"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.62/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b97489956102fac303126a5a3f99df829e4fcb8e1994d4fd0560c007d3953c87"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
