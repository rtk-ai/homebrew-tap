# typed: false
# frozen_string_literal: true

# Homebrew formula for vox - TTS CLI for macOS
# To install: brew tap rtk-ai/tap && brew install vox
class Vox < Formula
  desc "TTS CLI for macOS — local voice synthesis with Qwen and system say"
  homepage "https://github.com/rtk-ai/vox"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/vox/releases/download/v#{version}/vox-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_INTEL"
    end

    on_arm do
      url "https://github.com/rtk-ai/vox/releases/download/v#{version}/vox-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_ARM"
    end
  end

  def install
    bin.install "vox"
  end

  test do
    assert_match "vox #{version}", shell_output("#{bin}/vox --version")
  end
end
