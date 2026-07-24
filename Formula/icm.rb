class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.58"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.58/icm-x86_64-apple-darwin.tar.gz"
      sha256 "42edcb41f45736b5244906c109986cbfa7094f03cdc090ae87c075a4980d14e5"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.58/icm-aarch64-apple-darwin.tar.gz"
      sha256 "449a3b105fe99bd8aed8625e93cfc7c2670b493f7b477d2100a1e5acf39f4f4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.58/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b25693c2d4b9bd9ed43db86ddf8b0ba40f8ab90fc923ea6c498eba9993d70b58"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.58/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "435a7e2f9c78a818a5c557f2ee78382659c1e144ba1dd789f764444b54510f52"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
