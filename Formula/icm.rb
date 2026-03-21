class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.5/icm-x86_64-apple-darwin.tar.gz"
      sha256 "298eefe38f13da2960d0cd281b078408f613748270997d57680674214870f51b"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.5/icm-aarch64-apple-darwin.tar.gz"
      sha256 "cf554a8af96ac00a4bb53c0f62cd2541253d0e01bc6223c39e80ee11893a90d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.5/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "946afd3feba31255a3f8e2d8877f5eaf93b9d55838086a379a67b0f93e1ec34d"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.5/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14d7be664327835431333e66cfb9fa886068413c88325a04722e9c70452e7aa7"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
