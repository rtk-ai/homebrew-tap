class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.2/icm-x86_64-apple-darwin.tar.gz"
      sha256 "5da2d2df63fdd3a611f65bb00e02c45962687e53fbc8a17c68d399e63fb658cc"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.2/icm-aarch64-apple-darwin.tar.gz"
      sha256 "62a7625013a630bd4190f024f01cba694596dbfac89e03441fbdffe7619f4b4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.2/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd06eefad5b068ec2093678ca7b996f419b1bc41bb32cef3093f900780c336b9"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.2/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b88fd045d88c8c086d4442c40647027161c85df298e2e947640efee5dd7970c3"
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
