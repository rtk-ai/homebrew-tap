class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.1/icm-x86_64-apple-darwin.tar.gz"
      sha256 "2fc7f3d332e8c06e200ec021d9fbf103ea62f67ae996a884b93f01e0accce263"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.1/icm-aarch64-apple-darwin.tar.gz"
      sha256 "3357cfa73ec184fc9dfa2e3e50f691dbdad09a4cfc1c22f7064f17c21cda1a80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.1/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba5111e2c55fd7d920d543933b479c85fede240647f68b63decd15b2a155b4b0"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.1/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dde39efa0a27ae9bb04da27e3707fd140fe648b3e49a08553b2b2b6fcac187cd"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm", shell_output("#{bin}/icm --version")
  end
end
