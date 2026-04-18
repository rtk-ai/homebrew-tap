class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.26"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.26/icm-x86_64-apple-darwin.tar.gz"
      sha256 "3861a3d3f8ebed9c3b4e16497baf220e4d83622d89eb2cf9bf2b8bd86e06ee44"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.26/icm-aarch64-apple-darwin.tar.gz"
      sha256 "52f5d88ad4854f90c57b009299dfcaeb8fb10a5d8c8b23a5da0f075cde23cd62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.26/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3cc8e46eb70f40da1a225dd7f7c8a559a39069fcca6b4cc56aec591091fcc03"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.26/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4271ba8c014d36946f2374072103e3cfa9fee9543a8ce2fd9c9eea5bb2103cd5"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
