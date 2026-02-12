class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.4.0/vox-x86_64-apple-darwin.tar.gz"
      sha256 "46373117cf29ffe4588c5cb7c8575d1a0b47f453635ceebee06931b68b24ed32"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.4.0/vox-aarch64-apple-darwin.tar.gz"
      sha256 "57842ad63b74d55e9829653bcc67ebb0e8c22e0d6a65e88167d138659b622ad0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.4.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "273a10660a8de36a8e29fe20fae123587ae718954318c91f27b19324a811e78a"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
