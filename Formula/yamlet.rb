# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.6.0/yamlet-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "fa5fd9a2b77dffb7cd6b593d4591f04ef104c69da847e075485035f8a259cdc2"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.6.0/yamlet-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "12547cf8d6913c4c4e380462725fae3fbec286a5c4873dfd12507d5f9d2daa90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.6.0/yamlet-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95c09f77630747f268ff5834683a89131bfacf85a48683f6e50524a49f536c17"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.6.0/yamlet-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02b4f4892b2f18fa246aa3d129389c52604620f5246964680a7ae3a50c7d9a08"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.6.0", shell_output("#{bin}/yamlet --version")
  end
end
