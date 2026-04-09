class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.14"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.14/icm-x86_64-apple-darwin.tar.gz"
      sha256 "27797d558cacca16c8aee5f8ff5b94a5eaff6bbdfa60887e5773378eca0257ea"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.14/icm-aarch64-apple-darwin.tar.gz"
      sha256 "303b3d45fd2a0dba8e2d8a3f074804ae66adce2271bdb8765dd7f6a0e88111df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.14/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2520c795b01b804d2a4036262ae39400a60af1e92fca400c6c3af3d586b937f4"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.14/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16e765140f7bad7b084fed9c7f980b3751f706ffde1496d6a7c0fe9583631dd1"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
