class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.14.0/vox-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.14.0/vox-aarch64-apple-darwin.tar.gz"
      sha256 "d8ec176de375510a9604f36ece9ef9b29ab35a5614d5f5b2a9726e72182983ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.14.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58c9e9f81df003550c3adb65306dabc82a0a358b6fef90d0883e51c1b8438c74"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
