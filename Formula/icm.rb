class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.11.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.5/icm-x86_64-apple-darwin.tar.gz"
      sha256 "a563f97605d119cf64214dafcbc4b4ba0da720309429bce76bc988de057ccf00"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.5/icm-aarch64-apple-darwin.tar.gz"
      sha256 "46f539a182c9c8d887821f9707c67bf168533a71254ad41976d03a22ebf0d212"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.5/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ae5e4fe853f08a6b31289e75417006ec4fdd0d5655a33d2aaac28cba359da25"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.5/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "318350dc45c7264447a2046818cd9f80251d5ee8fddf5a5cc62ca6fdb578918a"
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
