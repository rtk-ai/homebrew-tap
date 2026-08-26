class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.63"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.63/icm-x86_64-apple-darwin.tar.gz"
      sha256 "41244c0c4b40c062829215427a3e8da0377627d356a752f7b6096f3f2cbfac13"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.63/icm-aarch64-apple-darwin.tar.gz"
      sha256 "db55b30307da39f9ec4900074009f096fa25eb7824ff69c3a2c977182ee989a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.63/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb2b1d940c729d1a07886d959fcbdcaadbd5eda3c83aee718a644d9816c55163"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.63/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3bd8587e24854fec9a49d0e4a9df4059f05a16b02a431dcc46ad171fc441720a"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
