class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.25"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.25/icm-x86_64-apple-darwin.tar.gz"
      sha256 "4652b008111f402446928200364595b429e1e896c3c5dfeae82174bc2f362dd2"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.25/icm-aarch64-apple-darwin.tar.gz"
      sha256 "de349dba0e02b83ab29b9ef55708d88e3cf38afcbd96bf571389f6231c54bb36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.25/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "edf847219d55adf4dac81cf4fe6f6d4f8335890e9a9142f7553843d6648a41a9"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.25/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0cb0744cb981fa423619764c0cee4bd0cd5b63b0c64f6f7ebe8e23bd5123c78"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
