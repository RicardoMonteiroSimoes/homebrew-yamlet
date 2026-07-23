# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.0.1/yamlet-0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "52c29809fcd3ff8c39c142c0003824ace408bbe3a1e7cce31f6443d04ef8566d"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.0.1/yamlet-0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "93c430dc7078345462656b7945b2f9c0a3d689d52bfab450f4445e86b839e684"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.0.1/yamlet-0.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "010b07801f0bb3d4e5754d10c7b623475bc88166a6a2eb89b281d0d854d8f2ae"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.0.1/yamlet-0.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6b6b10f5425a9e8fe8147ae2080c9d9e35012e1ad12fa97c0f996af1afc2f4a"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.0.1", shell_output("#{bin}/yamlet --version")
  end
end
