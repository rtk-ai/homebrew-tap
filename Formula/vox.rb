class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.1/vox-x86_64-apple-darwin.tar.gz"
      sha256 "801f93ac24c15c195c69c50e45d27a5ed736fd2b6e2f37cf62e751315d2efb69"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.1/vox-aarch64-apple-darwin.tar.gz"
      sha256 "a2e1deb6eaaad50049acaf9ea12e7b34c9546aa3be3b447c798ab1ac466c47b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.3.1/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7041adff47de00ff61862980a56f66fe4547a7d6843d57fb1bb521c58f71a0f1"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
