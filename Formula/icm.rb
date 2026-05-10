class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.48"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.48/icm-x86_64-apple-darwin.tar.gz"
      sha256 "2bf380cba3af57e05330628ef9f4486b81b725e3cb93acd4f37c3a113e8d7795"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.48/icm-aarch64-apple-darwin.tar.gz"
      sha256 "8073265f826236033685a699b10ae2640e950a26fcec0e3d678bb76b8ad5efee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.48/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b0f5bc4dcbe12f5fafb699054f7d5b369ec2ac23bbab967b5c40f62a99f0cfd"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.48/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8902852e73f2aecc9fead4ea0030f8483d9f0bdd9942c5d51fa1227cb5c6a91f"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
