# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.0/yamlet-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d20bc70ad674eadfcec980c289501bea489d18c56a5a8adb7d110a03f8ae161d"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.0/yamlet-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd51adeef78ca00376327632a67c67e6ceeef023c7d4601937c0c9578c1bb717"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.0/yamlet-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e375655c56023ada7e60ea26ccbec1332c507c54a46b359f8210204649c46a4"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.0/yamlet-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8864cb3a1fc8652a88c30d2f6032222216b7952119f0024501f66ee28d823982"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.5.0", shell_output("#{bin}/yamlet --version")
  end
end
