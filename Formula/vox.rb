class Vox < Formula
  desc "Cross-platform TTS CLI — local voice synthesis with three backends"
  homepage "https://github.com/rtk-ai/vox"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.9.0/vox-x86_64-apple-darwin.tar.gz"
      sha256 "59afcd79f6027d2bf7499e5ce65d30a5cbb682ddeae35eecd05d8fec534a6362"
    end
    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v0.9.0/vox-aarch64-apple-darwin.tar.gz"
      sha256 "6d057d038d492720a9745c17dc428eb2291554605109d965fb9b0016b4a99234"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v0.9.0/vox-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23beacbb2eb4b5dd09d02494695da97f0a9ed13975a0b11e4cf22ca21e2e44be"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
