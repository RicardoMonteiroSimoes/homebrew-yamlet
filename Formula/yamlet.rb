# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.2/yamlet-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "3f941fc6fa051dcc0fe80588886dcfca0ff0a380596d7ede4ecc5f552be5f70e"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.2/yamlet-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "d212b8844f76410df01d6efd199af23887588ebf29a1ed48c41fc581f36d859a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.2/yamlet-0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e751e9ecc2a3d22be03831d0b882ddf5cd541b29df9e577c68ec7f8159ac4cc9"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.2/yamlet-0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "053717993d9c4a856c886e225a4bfda0a1f506fbe32a382c89b29f9de0f5d01f"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.5.2", shell_output("#{bin}/yamlet --version")
  end
end
