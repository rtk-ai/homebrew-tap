class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.52"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.52/icm-x86_64-apple-darwin.tar.gz"
      sha256 "ba5336288e2f19c6d65803df15df9c5614945dc6942eccca4e306da317435f00"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.52/icm-aarch64-apple-darwin.tar.gz"
      sha256 "5340a59af0c97a703f5eb42e18d4dd00ff0849d7b4986dd4d193b5f22be16604"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.52/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48c120f8d52fe9024684201f74ba79ef18811046143ccbb47ed1f62eb21da87e"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.52/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1929614ef42190c53359da7f4ace82b586103e1dd36c6b07fd00a587258f115"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
