# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.3/yamlet-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "2e3b192bfd0e794816d0f83a3d9be903d1edd83a645776ae3f254cd7e30227a0"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.3/yamlet-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "54b51e53e0d8748f5c8c1d67283663c8669677ad6cb45b42807effedf61c883e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.3/yamlet-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c722ada998fb709ce54c493dc5fd5ca337bec35bbac7145b134d0e2d8e08b6a"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.3/yamlet-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa1fcded2e1b3bdba4ae6c9cce96f0435eaacc93435868bec878950aabbd61fe"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.2.3", shell_output("#{bin}/yamlet --version")
  end
end
