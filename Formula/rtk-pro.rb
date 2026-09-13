# typed: false
# frozen_string_literal: true

# Homebrew formula for rtk (PRO edition).
# Install: brew tap rtk-ai/tap && brew install rtk-ai/tap/rtk-pro
class RtkPro < Formula
  desc "Rust Token Killer PRO - CLI proxy with Shield, Cloud sync, and secrets detection"
  homepage "https://www.rtk-ai.app"
  version "0.42.4"
  # Proprietary: anonymous download from the public rtk-pro-releases repo;
  # the license is activated at runtime via `rtk login` (binary alone is inert).

  # Published by the PRO release CI to github.com/rtk-ai/rtk-pro-releases.
  # sha256s come from that release's checksums.txt / latest.json.
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk-pro-releases/releases/download/v#{version}/rtk-pro-darwin-arm64.tar.gz"
    sha256 "REPLACE_WITH_DARWIN_ARM64_SHA256"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk-pro-releases/releases/download/v#{version}/rtk-pro-darwin-amd64.tar.gz"
    sha256 "REPLACE_WITH_DARWIN_AMD64_SHA256"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/rtk-ai/rtk-pro-releases/releases/download/v#{version}/rtk-pro-linux-arm64.tar.gz"
    sha256 "REPLACE_WITH_LINUX_ARM64_SHA256"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rtk-ai/rtk-pro-releases/releases/download/v#{version}/rtk-pro-linux-amd64.tar.gz"
    sha256 "REPLACE_WITH_LINUX_AMD64_SHA256"
  end

  # Single owner of the `rtk` name — never installed alongside the OSS formula.
  conflicts_with "rtk", because: "both install the rtk binary"

  def install
    # Tarball ships the binary as `rtk-pro`; install it under the canonical
    # `rtk` command, plus an `rtk-pro` compat alias.
    bin.install "rtk-pro" => "rtk"
    bin.install_symlink bin/"rtk" => "rtk-pro"
  end

  def caveats
    <<~EOS
      rtk PRO is installed! Next steps:

        rtk login --endpoint <your tenant URL>   # activate your license
        rtk init -g                              # Claude Code hook (recommended)
        rtk --help

      Full documentation: https://www.rtk-ai.app
    EOS
  end

  test do
    assert_match "PRO", shell_output("#{bin}/rtk --version")
  end
end
