class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.54"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.54/icm-x86_64-apple-darwin.tar.gz"
      sha256 "67c6a2136b803cc09f9a8a834dc62ff32ac27d0dc31c65ec59b3d2d7439ebb3e"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.54/icm-aarch64-apple-darwin.tar.gz"
      sha256 "7fb42bd013f4ebfe50d31ebd33d0489f200de879c50456f86fb53ceff3db3d14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.54/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e956a717f97df66c50f844b721289fbd7a772832dbdd6f9699833e0d79687b8"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.54/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "094c5856334c2c71abb22cde706e97413dc4fd7838bfb1ea593fdecb64f3ef22"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
