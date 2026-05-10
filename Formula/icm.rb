class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.47"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.47/icm-x86_64-apple-darwin.tar.gz"
      sha256 "54267da25e8bbd267d255e09288f4d97d583d536cbb7c10a76d61e26959827ef"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.47/icm-aarch64-apple-darwin.tar.gz"
      sha256 "322dc395522c47c3c3ac894365f5fa34f0d4707231ce7fd2f4ca11ae98b6fa33"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.47/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2de4f9b656f30fb0c29394c535a4b8b6c73f86a5bc85383c2b67895c0fb88ef"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.47/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5a6b8900fefb3e8dbe96952366fc5cb4f47de5d8a40812a9e26d39f30e48345"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
