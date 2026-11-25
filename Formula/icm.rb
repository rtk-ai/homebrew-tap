class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.11.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.6/icm-x86_64-apple-darwin.tar.gz"
      sha256 "3c0965f96faace786c4e5e6f384d8e2368b552dc98bae07ae2ce0051e6909656"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.6/icm-aarch64-apple-darwin.tar.gz"
      sha256 "1f9e74bac14865f356599e8be57c0f91a10fe8abeb53e163f19e038f855a19a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.6/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f2eb52abd3401eea5481a5ad1ef3e129cf50cfc0381ccd8b2c34896b7ed91b9"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.11.6/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6db11bd8d470b1a5b4d40cd46c645b42ce229363d6218101ad4b96d213f07061"
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
