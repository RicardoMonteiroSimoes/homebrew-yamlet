# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.1/yamlet-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "abb282e32136afd6e634b89eb63e39c64a9ebab4bd8f13ba66f2971ddef50e48"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.1/yamlet-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "b654be847536a173df36b19b97b98ae6273c6ea78d4abedd5193afc3bf7bcf9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.1/yamlet-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82a50c6acab7c952a490e727bf390d9ce8bce8f86a8ff11c9a6ff7b0a21ab5b8"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.5.1/yamlet-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "400eabe45c16ee9a4b97e9db8d5141eab3c06f34e1ab070bbd193ed6c91ca16d"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.5.1", shell_output("#{bin}/yamlet --version")
  end
end
