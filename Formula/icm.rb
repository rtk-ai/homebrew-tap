class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.43"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.43/icm-x86_64-apple-darwin.tar.gz"
      sha256 "1c94c216dd8f2607e328c88a6b580695e7f41443166afd6833cd155f40a98e3b"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.43/icm-aarch64-apple-darwin.tar.gz"
      sha256 "82bb849ba9c802c140269f31316e7da0aca7d2c74e2c801f502f09ff4a2719d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.43/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e1efad47db755d5d5db76e5c19577daad55561e9dce45a4d5bbc40106d67464"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.43/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7a63cc868356b98cac17e5024808092e35b7dca977b44f14a0d4f5fed25ad30"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
