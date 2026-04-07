class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.13"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.13/icm-x86_64-apple-darwin.tar.gz"
      sha256 "01803451b9b1d007975d96238897e4d630c60f075a5420d461d951b673ceea3f"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.13/icm-aarch64-apple-darwin.tar.gz"
      sha256 "f144c6b38134b652ed72e6201d686e3ab7d61e479b9495325deb74c0656792c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.13/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ba667691d6a589af1d642e650c4d8f8d5aba88299ec2450b1de021215a4d364"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.13/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f80516951904e568da25c0584cc5862a0dffef3ada2f533bfd4a23c39c79050c"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
