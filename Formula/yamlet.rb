# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.1.0/yamlet-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f287935cbc8d60be2b8777763fe5406617f3bfa0f5cc55c9c1631326c8a5e89"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.1.0/yamlet-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd1d0d005d1228b4b7f4616587eabdae92ce1ad477a030a14f93639e1d182f0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.1.0/yamlet-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77a7a7640640676b8884504bbecacce3dce1e87fa615febfc40c235e6b0ec9f6"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.1.0/yamlet-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a7331c6589a6d9ec877c42c9f3ff6fe9080a30cd4d18553d449e834545c6d53"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.1.0", shell_output("#{bin}/yamlet --version")
  end
end
