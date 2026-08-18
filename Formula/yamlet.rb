# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.0/yamlet-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7a9cf875b625d57d1387cf2d2e5708da6ca673ed5108e4d3847b6b1d70bbbf0a"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.0/yamlet-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "bb1ef3d8c5e51af481410e8fa6bcf5f64cdbd74a77e5727dc32dc3dc862d8f5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.0/yamlet-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0bc38ab2f9c9d75467256dd020da59ae05245589d90c681b43804c0897c81771"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.2.0/yamlet-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ce00cd63807b05bc4f8881a5c277453fee11bca49d768bbdb2b6442c795a153"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.2.0", shell_output("#{bin}/yamlet --version")
  end
end
