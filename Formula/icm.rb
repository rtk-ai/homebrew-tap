class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.39"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.39/icm-x86_64-apple-darwin.tar.gz"
      sha256 "e7f95048a78f436cb4d176bc606a6b411ce30f0b77c2e3b92220a36fd468a717"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.39/icm-aarch64-apple-darwin.tar.gz"
      sha256 "ab0f57795ed032a807d78e3b0cc177963279c1e206eabeef595ec33a4c53e1aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.39/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "249ce13098817b17956cd931d3b4773ed5074598b629387d718eed2d763b0179"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.39/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9cb4148aac0ab6c140b7ce6d33757730f5d83d832621da7eba78a441bf20d67"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
