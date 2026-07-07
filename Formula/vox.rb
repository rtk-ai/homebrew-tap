class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.15.0/vox-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.15.0/vox-aarch64-apple-darwin.tar.gz"
      sha256 "d9813f9eabf1afda5a7ba28215eb1b53fcd50d16218882736262782380a92cef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.15.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8251094cd3a335cfa3e3bc332dd688f84932c076257b237b4830ad818133dc81"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.15.0/vox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d552e5fed7f881ff25ee0888bb6af9d06e7763f28068699fa0945119adaae418"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
