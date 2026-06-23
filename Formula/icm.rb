class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.56"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.56/icm-x86_64-apple-darwin.tar.gz"
      sha256 "5c20d1ea56d2aa60f791da7f5f7bca79b4c218813289bdfb106aec6c7dbbff04"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.56/icm-aarch64-apple-darwin.tar.gz"
      sha256 "44ef0ee1a4cabc0a81f77592867d33136dccd9e1ba620e87aae7f28854f8de98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.56/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5620198c0ce624c015293ca72deacca1c592560b8abe296fff800c4f2baece9"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.56/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "109238c98dbed08ba52c7f6f8785106fefcc2be93c68599ed7605a5f40924172"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
