class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.1/vox-x86_64-apple-darwin.tar.gz"
      sha256 "14392d818d26063d65c15eb984082973370053558cbb119000f964f1c570664d"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.1/vox-aarch64-apple-darwin.tar.gz"
      sha256 "301461a19c0843683b161101f35f17cbca7a82c07c7632e83c3ad827924ddaf4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.1/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbc5b520ae015c6b1ff43285b93e8dd41122f6a254379debbb3da7489abd2ae8"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
