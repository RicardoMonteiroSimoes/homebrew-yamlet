# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.4.0/yamlet-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "1eef1c4acc82ffd88b780a10ce81c4f2ee4f85271fdd503c70ade339f80de21f"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.4.0/yamlet-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "b1a4119fe410b6de70a35303e8a554620abbee438f0fc85c007a6a3801fa3276"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.4.0/yamlet-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28537e8ee6cbdabbd37feb51e1c4493a6a58b5fdbc707f39c2b283417daf0860"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.4.0/yamlet-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a77e21e791dc15454c9d0ac898f1027d8b128ba3db5b1c054ee028adf1ce9fd9"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.4.0", shell_output("#{bin}/yamlet --version")
  end
end
