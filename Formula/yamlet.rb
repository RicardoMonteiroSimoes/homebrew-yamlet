# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.2/yamlet-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "371ee126bb6240243f17dd04cb0bf73b1950ea97bb58d4b474e102b435030ba9"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.2/yamlet-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "9043f09ca69633fe7d1337531aa5f68837e4832af684f17a93063058341d2af7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.2/yamlet-0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a5c053cf90d3afb9a18f93a10abec29b3f29e795fd30fc0efd6b2fba779aaa1"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.2/yamlet-0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73013189b6d7e23e4acbcdc1ed587dc1e1ebfa5b57944e701bbc122235806a52"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.2.2", shell_output("#{bin}/yamlet --version")
  end
end
