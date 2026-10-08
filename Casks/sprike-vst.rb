cask "sprike-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sprike-osx.zip"
  name "Sprike"
  desc "Sprike is an additive / wavetable synth ."
  homepage "https://plugins4free.com/plugin/2846"
  depends_on :macos
  pkg "Sprike.pkg"
end
