# Template for the Homebrew formula. scripts/update-tap.sh fills the version and
# per-target checksum placeholders from a release build's SHA256SUMS and pushes
# the result to RicardoMonteiroSimoes/homebrew-yamlet as Formula/yamlet.rb.
#
# Do not edit the rendered formula in the tap repo by hand — it is overwritten
# on every release. Change this template instead.
class Yamlet < Formula
  desc "Verify and author yamlet specs"
  homepage "https://github.com/RicardoMonteiroSimoes/Yamlet"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.3.0/yamlet-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "556f9ec01f7863f796aa5f7c82cab97b3b714c492e89e8aa9aac243b54814c03"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.3.0/yamlet-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "eea808eb5b7c323f0b22ca7df71d9a47fa557258317a960304e088341b659e19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.3.0/yamlet-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd67dc5194686d047971abf4c3b38f710cf143452b23326a98c013967f74e764"
    end
    on_intel do
      url "https://github.com/RicardoMonteiroSimoes/Yamlet/releases/download/v0.3.0/yamlet-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99a7b76b97ac09650fbe90fe70b5856e77282570c2543c70def6635e8b8f561a"
    end
  end

  def install
    bin.install "yamlet"
  end

  test do
    assert_match "yamlet 0.3.0", shell_output("#{bin}/yamlet --version")
  end
end
