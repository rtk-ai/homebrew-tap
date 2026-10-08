class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.11.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.3/icm-x86_64-apple-darwin.tar.gz"
      sha256 "8a262ad43c19e0950b7febe19a2a6ddb7747ea145eef3c345fd09f04573bb71b"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.3/icm-aarch64-apple-darwin.tar.gz"
      sha256 "1bbf622b8c41736407013143a86408d9e5f2f161e339389890022630290e80ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.3/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a005761bbe9413e90831861ec4c5b7a699b35e599b9b43d4096e26445040d029"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.3/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7244f1698fadbdc5efcb978c1e1d9743f69266f41ff6ac31647cf78c9b4d457e"
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
