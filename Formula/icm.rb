class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.61"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.61/icm-x86_64-apple-darwin.tar.gz"
      sha256 "9a8ea31a1584559001aff2db3d2d6fcea391576fa7660da94dfa6ec8d0a41fe3"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.61/icm-aarch64-apple-darwin.tar.gz"
      sha256 "3f87e78b37e48e5e4729f9120ead424d37ba003a2b7be1175735c9ad0d3f70f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.61/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3d261924ffec0f727f5cd77d788b887fb3ee1cd520718f05ce4fa33e1879728"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.61/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41a8a8e7dd5f23ca6ba3d0bb053327e2d98bf696622ba26f0190ca2080e33ba1"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
