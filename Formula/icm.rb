class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.11.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.4/icm-x86_64-apple-darwin.tar.gz"
      sha256 "c038dfe149cf57fee553c98e7b1736b18a22aa3cd0cb148783a4b21698452e0b"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.4/icm-aarch64-apple-darwin.tar.gz"
      sha256 "af2069c9577bfa8e226d4d166b2f108870e639e1597b91f1497c6a2a13a5db11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.4/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "319e619e809cc80e033b56dfb7ec5977ad886d1a13f9db2ab82022a9ecaca376"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.4/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b66581ce1e9d0ab5c59317eaa84440431f8d83f757d2d2822c0f67bf34bce1c"
    end
  end

  def install
    bin.install "icm"
  end

  def caveats
    if OS.linux?
      <<~EOS
        Keyword search works out of the box. For semantic search,
        fetch the ONNX Runtime once:
          icm embeddings download
      EOS
    elsif Hardware::CPU.intel?
      <<~EOS
        Keyword search works out of the box. No ONNX Runtime 1.24+ is
        published for Intel Macs: for semantic search, set
        ORT_DYLIB_PATH to your own libonnxruntime.dylib.
      EOS
    end
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
