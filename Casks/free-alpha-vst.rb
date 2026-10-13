cask "free-alpha-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/FreeAlpha-330.dmg"
  name "Free Alpha"
  desc "The Free Alpha synthesizer is a 32 note-polyphonic synthesizer based upon a classic subtractive design ."
  homepage "https://plugins4free.com/plugin/2290"
  depends_on :macos
  container type: :dmg
  pkg "Install FreeAlpha 3.3.pkg"
end
