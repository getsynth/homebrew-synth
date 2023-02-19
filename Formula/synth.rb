class Synth < Formula
  desc "The Declaritive Data Generator" 
  homepage "https:/getsynth.com/"
  license "Apache-2.0"
  url "https://github.com/shuttle-hq/synth/archive/v0.6.9.tar.gz"
  sha256 "f89fc355dc0e311a6e5e0e8047f4721f23e35cdcb3355e85c7c66e8e2e67da91"
  version "0.6.9"
  depends_on "rust" => :build

  def install
    system "cargo" "+nightly" "build" "--locked" "--bin" "synth"
    bin.install "target/release/synth"
  end
end
