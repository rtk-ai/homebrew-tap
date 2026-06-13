class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.51"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.51/icm-x86_64-apple-darwin.tar.gz"
      sha256 "55307d48d589f7d1a6886c9960d83775506eca2eb0c25ca3da65b16f99590e58"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.51/icm-aarch64-apple-darwin.tar.gz"
      sha256 "c67002466bd451fdc4cdfe5495056c06e31ede47c710f1070fca7f3e1c55a9d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.51/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39e89d9fc20280a69f42f0302e37b19c782789d0c5fe456c97599744bcd4da90"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.51/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65dc2313dfac84e63a252efbcffebf214341127ca671727159821bd71b0a862a"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
