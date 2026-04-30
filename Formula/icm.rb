class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.42"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.42/icm-x86_64-apple-darwin.tar.gz"
      sha256 "59ab41184efd6256a5abc739c4bdb36e29d50694e7e81d4e4d317b2aa79678b8"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.42/icm-aarch64-apple-darwin.tar.gz"
      sha256 "f62a7d349853f8db1643f7866eb61c9193cc0aff683e3c92b2e26644dce5fb8b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.42/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23e31874954ca4fa4b74ef794f12fb8509121dcc6b3d008537ef8a4818c1bbc9"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.42/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7b085a448cf77d0184a39d969a93377a2c0ee850e4055779024d7cfb11816fd"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
