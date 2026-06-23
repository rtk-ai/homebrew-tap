class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.55"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.55/icm-x86_64-apple-darwin.tar.gz"
      sha256 "012905340b1181c64469063ef0cd14ca52e3da65ff1dec8ff4b5346912d9ba5d"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.55/icm-aarch64-apple-darwin.tar.gz"
      sha256 "8e4d39cc7a82615149f59e64f528de10c665081d9a661ee78c9d3840befb0c01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.55/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22a021d370505d1882720644c8e4975391ab339457a97bbf42f868dc54858ed4"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.55/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eba5de9790fd94be3bf839d92de5f8225ce1ed7d562ac49496ae8f0d72928b79"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
