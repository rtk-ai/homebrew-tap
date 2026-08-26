class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.63"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.63/icm-x86_64-apple-darwin.tar.gz"
      sha256 "3379f9f70e0cd5bd30b9f2ef2a475bf19ba55188657c8e9ea99cffb6711dddbe"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.63/icm-aarch64-apple-darwin.tar.gz"
      sha256 "14e9291e0090999b434c4e38d2e97b8119a01387f5b2561b0e822e72f9a6b0f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.63/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75eb6a516bf951556fb96b96212ba8c140a83cc3b33e8e4ef677b53bc0d29b4e"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.63/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9776804f1af03d352c18c42842068d233dbab7f64164dfd8683aff0532c9487b"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
