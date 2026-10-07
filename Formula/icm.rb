class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.1/icm-x86_64-apple-darwin.tar.gz"
      sha256 "9a68c14d51d7a144f192193e89a1cf65501e7d70b9cefdf30b25e8a45a0a986e"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.1/icm-aarch64-apple-darwin.tar.gz"
      sha256 "720e9b6344cb3fba16f0291cbb7221b73b6b20bc3373797f5c177a7f9b6a50ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.1/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de09d7a5574688b96ae51c3f9d68372ee77a253a3aab614582ff0ff899f8d604"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.1/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6eddb2690c7760419a5110bdc5140539006c11e16cf67cba909ef5e9b5e2e455"
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
