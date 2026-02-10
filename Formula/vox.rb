class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.0/vox-x86_64-apple-darwin.tar.gz"
      sha256 "6c304a67e765f0fb8112f4ec1c067e800240c2c18861cc21fd0f69b62ee733d7"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.0/vox-aarch64-apple-darwin.tar.gz"
      sha256 "a531c8cb7005a501495a5c2f5f8f22e9fdf3aaf032c8c7bf9fa8d05546358d67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d613231825c0ff23b142057589a5c779c60c3b99d29c0b6815f6507d2c03bf06"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
