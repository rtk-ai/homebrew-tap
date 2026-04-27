class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.28"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.28/icm-x86_64-apple-darwin.tar.gz"
      sha256 "7572db01e98686209af89fe586ae425584477563fc3c853fb13a6ff97d800ddf"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.28/icm-aarch64-apple-darwin.tar.gz"
      sha256 "f5feafccab505264c19c990e9f15820255f18cbd3d8b0de507965112a49ae84c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.28/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b27d64c1084bcc70f1902dece7e4de6ef405e11a19194c59049ab04a0688224"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.28/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d681413e67bd878382a302cd3b3967dcb2dc61b1184345ae80f9cd274f2c32d5"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
