class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.3/icm-x86_64-apple-darwin.tar.gz"
      sha256 "508953e3f24b8d84f4ee46886f247356ee9dfaeb0fe3a6512cb5428f46155359"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.3/icm-aarch64-apple-darwin.tar.gz"
      sha256 "c28daf027ded3ef52fe418bd3030f2c6babc92cc588319504dfd21027b45f871"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.3/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfb7da8d899bc8858e04386fee97b37e8df4d1134552efdba38d467a83a21a7a"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.3/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be8f654393b80ebc6370d003b2b396fa5b123766cc3458d28881f1da68fa4f01"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
