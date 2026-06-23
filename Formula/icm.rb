class Icm < Formula
  desc "Permanent memory for AI agents — MCP server with hybrid search"
  homepage "https://github.com/rtk-ai/icm"
  version "0.10.55"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.55/icm-x86_64-apple-darwin.tar.gz"
      sha256 "e16908fa5186b4045331222d5569d4d904ddb1575ed0e6b6b385c1013e0de354"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.55/icm-aarch64-apple-darwin.tar.gz"
      sha256 "447fd06fac3630588e9415320e049dfb4c36113eb982e5d037da5987012e6040"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.55/icm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd85767f147c551e67a596e376b5f1a5d93ae5f9c9c11637997c57b1aee3b892"
    end
    on_arm do
      url "https://github.com/rtk-ai/icm/releases/download/icm-v0.10.55/icm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "444aa0e7c090c9b78bfc74a1de810a480a01ad367a3acf5f0e5044b39f2f47b7"
    end
  end

  def install
    bin.install "icm"
  end

  test do
    assert_match "icm #{version}", shell_output("#{bin}/icm --version")
  end
end
