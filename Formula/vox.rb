class Vox < Formula
  desc "Local text-to-speech and speech-to-text for AI coding agents"
  homepage "https://github.com/rtk-ai/vox"
  version "0.17.0"
  license "Apache-2.0"

  # macOS: Apple Silicon only (the Metal build). There is no Intel Mac
  # build: the ONNX runtime used by the piper backend has no prebuilt
  # binary for x86_64-apple-darwin. The requirement below stops
  # `brew install` on an Intel Mac with "The arm64 architecture is
  # required for this software." The url is deliberately not wrapped
  # in on_arm: without a url the formula would not even load on an
  # Intel Mac, and the requirement could not speak.
  on_macos do
    url "https://github.com/rtk-ai/vox/releases/download/v0.17.0/vox-aarch64-apple-darwin.tar.gz"
    sha256 "844200570d31143af55ba8ba321bd4eb88f15ef2e9eda01f3d0b806fb6b94ea0"

    depends_on arch: :arm64
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.17.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29e0086926af55146578f2a26f521d3cb12a369e7a99b57c819c150ad0b1d330"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.17.0/vox-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a18f9a15c47daa64306ac02b50ab832947539b543e79468eb3674ed94799e5d3"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
