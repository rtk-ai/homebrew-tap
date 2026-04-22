class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.27"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.27/icm-x86_64-apple-darwin.tar.gz"
      sha256 "445fb56124870ef1caed564e93d6ebb4570cbd8d227e94f89ae71fa311c950d5"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.27/icm-aarch64-apple-darwin.tar.gz"
      sha256 "7ffed8115249ad4210557c615212fa3b7daa0ac25bce7f59e74fed3e54b1ad4e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.27/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06f0b49a81c7c755a4235849408cd26d4b51ec6d59f8b2c9376f519a2f83efd1"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.27/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3107f89cb86ba21c45f1bf87a938b87ddd8f29545ce37bee7059ed1394052864"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
