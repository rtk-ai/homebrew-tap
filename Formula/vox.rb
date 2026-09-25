class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.16.0/vox-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.16.0/vox-aarch64-apple-darwin.tar.gz"
      sha256 "0261f6c9d94afc39c146f80df41a1a25ae125e5939f793353ff62a4324b38dc0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.16.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e05e4f59fd05e0e2cd0f01e31e839597d0c0b22fc3007566dfd8456c07bb8835"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.16.0/vox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db4909ac871676ace9493a18e7f4279701a52b50cb9a2f9549d8c0ed110459d0"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
