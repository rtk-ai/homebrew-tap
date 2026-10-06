class Vox < Formula
  desc "Local text-to-speech and speech-to-text for AI coding agents"
  homepage "https://github.com/rtk-ai/vox"
  version "0.17.1"
  license "Apache-2.0"

  # macOS: Apple Silicon only (the Metal build). There is no Intel Mac
  # build: the ONNX runtime used by the piper backend has no prebuilt
  # binary for x86_64-apple-darwin. The requirement below stops
  # `brew install` on an Intel Mac with "The arm64 architecture is
  # required for this software." The url is deliberately not wrapped
  # in on_arm: without a url the formula would not even load on an
  # Intel Mac, and the requirement could not speak.
  on_macos do
    url "https://github.com/rtk-ai/vox/releases/download/v0.17.1/vox-aarch64-apple-darwin.tar.gz"
    sha256 "399e3846b34490ff56efce8c013f3276c1c04ebe8564a56e4daaf14905738a70"

    depends_on arch: :arm64
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.17.1/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40dc2b678b770e1268ab24ec3537e0243d04da45eff9d2c08568e9bc17f8d73e"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.17.1/vox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90a078e049389696080c19b9cfd612ba1b60b407238ba1b97ab47c6882f3fd04"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
