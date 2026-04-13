class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.24"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.24/icm-x86_64-apple-darwin.tar.gz"
      sha256 "ef1cc8032ab345624227578ae56c46b8637c32d83de31bf9ec373d99d1cd383e"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.24/icm-aarch64-apple-darwin.tar.gz"
      sha256 "a3fdb4bd1402a8393ee10b7db3118a11667bd13e6a2d011b5e262276fe13427b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.24/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0547296907f478dc40bdcc7f1bb51a044537a5a56023646320ee0d298dc83498"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.24/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9cd1ed169df31638fddbed85797987007ee2b37cda738d899eb68def81c935db"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
