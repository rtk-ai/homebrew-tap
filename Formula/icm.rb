class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.59"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.59/icm-x86_64-apple-darwin.tar.gz"
      sha256 "cc532e310af85e0c59ba4a1cf357c10bb9d6919a9b21a95bdab0171888ff7556"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.59/icm-aarch64-apple-darwin.tar.gz"
      sha256 "4fae2a98abd60c9b1b8e5134684e13354d1d62d016bdea87ba8b8403dcec3368"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.59/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77a76b77defa497b66c8c9703b5ac1c1bff9654ed37cf8bdd9ea52a8699a6a14"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.59/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31c0844ec3f211463fbb6b9e2c08bde32a1779d66716128e4613f41fec393dd3"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
