# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.7.0/yamlet-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "df36ee0b5221f49c415a1f44bdc2982b6b8925dd1a6b85679e4c91287a55eccc"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.7.0/yamlet-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "b407b88a96c5eb5b315a2ae1e77c6982998af6347350c0cea9894d8ac0d4073f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.7.0/yamlet-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e538d9a7f11da79cb31b13028672c1e9ecb1cca34c0c1867382cabde4cda91dc"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.7.0/yamlet-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e1645876ac459bb2e8124b9274aa6575af484d923a9b0488d7d0a0bbb927b88"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.7.0", shell_output("#{bin}/yamlet --version")
  end
end
