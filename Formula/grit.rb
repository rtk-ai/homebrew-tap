class Grit < Formula
  desc "Coordination layer for parallel AI agents on top of git"
  homepage "https://github.com/rtk-ai/grit"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/grit/releases/download/v0.4.0/grit-x86_64-apple-darwin.tar.gz"
      sha256 "054491ddc4eb0b0c22986a28264215dc2366e44d82aa508fad3c5481f51f4910"
    end
    on_arm do
      url "https://github.com/rtk-ai/grit/releases/download/v0.4.0/grit-aarch64-apple-darwin.tar.gz"
      sha256 "07a7a6f2aed2938b63db9662e94eb869df120889989271c2f1798589d3f0672c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/grit/releases/download/v0.4.0/grit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fd62ed762ad3401e7911ef0a10f16bcd73d9fdcc74b1568e528e2cc3d235042"
    end
    on_arm do
      url "https://github.com/rtk-ai/grit/releases/download/v0.4.0/grit-aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "grit"
  end

  test do
    assert_match "grit #{version}", shell_output("#{bin}/grit --version")
  end
end
