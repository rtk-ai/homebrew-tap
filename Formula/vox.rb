class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.13.0/vox-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.13.0/vox-aarch64-apple-darwin.tar.gz"
      sha256 "d502a7448b18c48d7a65cb6d415e3321e418198bb305accf98adc261f56835b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.13.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e00dae01a11bf5537bdba6a958722db625cb6a9a023dc6768e52f0d90ae7261"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
