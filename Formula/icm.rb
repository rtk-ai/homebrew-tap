class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.4.0/icm-x86_64-apple-darwin.tar.gz"
      sha256 "93221da3e769028b6ab2cfc60877888258c9ad914ca8e952c22f63f06528c11d"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.4.0/icm-aarch64-apple-darwin.tar.gz"
      sha256 "fa1e3b488ac4c3538c1e2656869b402eb800499fd53287495d3742b47df3ae66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.4.0/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cef7f195fd783b59a84054cbf3afb870725034c61c1d2e17cf425df07cf6478e"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.4.0/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c3e4649f46af8c6d90fcdbf5dfb33f34d6ee1a8bcc9516afff7e805038bfbf3"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
