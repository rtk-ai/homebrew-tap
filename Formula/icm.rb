class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.9/icm-x86_64-apple-darwin.tar.gz"
      sha256 "eb07ec8bd150f60d96164e6d9bdbf273151354197d17513044fc1c8e6aa05d7d"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.9/icm-aarch64-apple-darwin.tar.gz"
      sha256 "2a8b919722111ad4db75f9ed83dce6cb2422fb9a31849994b417775c5281958c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.9/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7b79d0d8d80102c48d536b45a9f8bc0e8487bf1c5da42e2d01d7c39cc697e26"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.9/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa3f4d71217b2c5f90de08c259f385c5f6bf9d3abea8ff7877691886478e1e02"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
