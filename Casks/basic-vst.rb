cask "basic-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Audio_Damage_Basic_Mac.zip"
  name "Basic"
  desc "Basic is a 3 oscillator subtractive mono-synth ."
  homepage "https://plugins4free.com/plugin/3738"
  depends_on :macos
  pkg "Basic_101.pkg"
end
