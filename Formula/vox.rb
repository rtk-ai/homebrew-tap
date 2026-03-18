class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.9.1/vox-x86_64-apple-darwin.tar.gz"
      sha256 "ed16b7b7f3c1ed270b8d0200e069a5d95e354e798809a9ffea5c357821a2ad4f"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.9.1/vox-aarch64-apple-darwin.tar.gz"
      sha256 "a929ca0f44c12a06c1a498f38f12bb3742dac74f4d4f0bfb8d52a8b58e171f48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.9.1/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b38aaef190125cd782426c1282c579fc1cbe20c69136e200c08af06b16e6a721"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
