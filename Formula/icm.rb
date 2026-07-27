class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.60"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.60/icm-x86_64-apple-darwin.tar.gz"
      sha256 "c8e449a493b22e1a332e562ab3c897fc1ce5bc597b9d486680d35beeb90bec48"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.60/icm-aarch64-apple-darwin.tar.gz"
      sha256 "ad3f1e2a1cdf268303b5c4b66acd38801c8fd3855ed8fdc511f18db509434696"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.60/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a41ef90293dc13a1144ef9c9ed15ae6b7bc3539c2b25b7b0eeae26c35abebea8"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.60/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f0a2206e667d6c6f09b94a1d1f2fad79f792da517df0bc0892b0e0dbf226f4e"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
