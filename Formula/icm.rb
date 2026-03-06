class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.5.0/icm-x86_64-apple-darwin.tar.gz"
      sha256 "66b89aa63c5efec7f89efdf05221b072bc435c800e6ad49cd8b23408af4f98a3"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.5.0/icm-aarch64-apple-darwin.tar.gz"
      sha256 "04c7480b26f447233ae09d9c4296bccd7e1a8f14f6a3f6b08e123f20bc3f4e2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/v0.5.0/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c516b2f2f76edccff594f0f9dc9d02cbe4b33f80de2ee8f4222989f159a58407"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/v0.5.0/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bbd8a10193c3f5de395018b0517ebc8990863793b00a69f3bf57948f98a5d42e"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
