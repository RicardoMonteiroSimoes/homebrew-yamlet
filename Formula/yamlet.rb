# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.8.0/yamlet-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4af073913e5f9d23dddd9411aead0f8820b6c6ba16648f5e031cc3b7805fa55a"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.8.0/yamlet-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "c38f8cee1211aef6b64ee18cd24b9062da247bdd5d6f307fda54eceef82c0f0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.8.0/yamlet-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4b09f6482c90fcb7fb75ab8593d6db89ef8b86e2b32aaa940e2ffe844717efb"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.8.0/yamlet-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d6a370a12c964729435d7f2904f6c6c28c783e0d2495049047f25a5bdd5e716"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.8.0", shell_output("#{bin}/yamlet --version")
  end
end
