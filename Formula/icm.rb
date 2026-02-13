class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.2.0/icm-x86_64-apple-darwin.tar.gz"
      sha256 "7e682a834f20c506fe0fefc9a9dfce5e682e41f7fc4533ef666bab1709c51a0c"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.2.0/icm-aarch64-apple-darwin.tar.gz"
      sha256 "5b7d0c54b3d59145fb247b36d5f95f870a7d711d0b7939ad5cf41bcc252385b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.2.0/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "749f9a885a08110a7e885563b99cfe20ac7ed9235ec40f1a86dbb09ce2c75b21"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.2.0/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b946c9ab53b9a3f79642b145c5e4768d80771aa5f965c39aabfb87829f087fc2"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
