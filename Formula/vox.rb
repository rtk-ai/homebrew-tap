class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.8.0/vox-x86_64-apple-darwin.tar.gz"
      sha256 "8fc937a396d392e5776ce8c9ed469857efd61ce645f54bd6c1b482e7409e2523"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.8.0/vox-aarch64-apple-darwin.tar.gz"
      sha256 "b1384642cfc28e6e0c04fb26d470b9083aa73569926914c6062ef5e263172c02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.8.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a81bce26e383328b74dc0579a8221d5f19f3c1f792d2c56656970f9550782174"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
