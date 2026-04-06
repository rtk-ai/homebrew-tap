class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.7/icm-x86_64-apple-darwin.tar.gz"
      sha256 "c8411d83660e1399335719120652c361d8f837dfa15ffa746521844c8426ddb0"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.7/icm-aarch64-apple-darwin.tar.gz"
      sha256 "22080306a33b428dbac8c4c742aeeb5b0e9d4d995098067e48f7a9a9d1e082c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.7/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5b76117c3349dc1cb84eb53302b3fb3d913e04fc4adf6bd764797cb1e6b4901"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.7/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a3311d536ea9b7763cf5c7d30d486bd3bca2c20ffdb67dfcf3107a006886d63"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
