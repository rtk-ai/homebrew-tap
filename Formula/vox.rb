class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.15.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.15.1/vox-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.15.1/vox-aarch64-apple-darwin.tar.gz"
      sha256 "282ee82650ab11daec8191b9d97b0e7d0088535b4d7a6cf214d02dd53f77f10d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.15.1/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "783d029a53f358f03aa3d5b337c2c8958609c757729b044ef6f3e729814fe616"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.15.1/vox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a048cc305b669eed6cab6fcae49c76adb603ff2ea0b6d048d601039dd35b2985"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
