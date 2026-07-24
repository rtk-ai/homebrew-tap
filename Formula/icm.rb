class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.58"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.58/icm-x86_64-apple-darwin.tar.gz"
      sha256 "fb68c49bfc1cbfeff89b8d5f9a43c4bd9541fe922acc9a5956f4a62de2865dd1"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.58/icm-aarch64-apple-darwin.tar.gz"
      sha256 "023c4abfc8d5c304f17297cf5994b59e33794fe2d12e5358633a3c165df8fb53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.58/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "262558ff6ca527ee476b99c47a9321b77bc40d0417117c29ae0c9dd72bcd8801"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.58/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1ea2fcb59796f990035bdd143ba7237fec691e31e2165f87f3410d27a47bb8f"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
