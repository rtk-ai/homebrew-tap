class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.0/icm-x86_64-apple-darwin.tar.gz"
      sha256 "6d4c8031f1757f092094fd11b87cef1b992208580031b41ea447b7a5a87e7792"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.0/icm-aarch64-apple-darwin.tar.gz"
      sha256 "ce76b25929198190b1790d2e3fbec38e22579b2525c952f28ce780e5402697f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.0/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89311b4ce419dd2429692a43862087cfa18a26b9b1d4d35b8e63a62198ee699b"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.0/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a0bf83f5704b4148d01dd84ee65efbf2685dc6e2fd060667c697fead29149f6"
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
