class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.40"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.40/icm-x86_64-apple-darwin.tar.gz"
      sha256 "33291369eb459b3d4543cffae9492a6c5b8c00c5cbd757a83bc392e3bf81e728"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.40/icm-aarch64-apple-darwin.tar.gz"
      sha256 "24fddfdca5559243eb8366499a670f4e83fb46ece8b084706ab0383d1aa8e4e5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.40/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03ee74d89d5dff3d713707b4adec695091e1abdbbf9f77de8f86f274454aab54"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.40/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "721ab91865cdbaceeb43492fa51acc2f1eaf0376d8194b8e86d3adfa66225126"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
