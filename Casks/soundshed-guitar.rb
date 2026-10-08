cask "soundshed-guitar" do
  version "1.6.0"
  sha256 :no_check
  url "https://downloads.soundshed.com/downloads/SoundshedGuitar-1.6.0.pkg"
  name "Soundshed Guitar"
  desc "Free guitar and bass multi-effects plugin"
  homepage "https://guitar.soundshed.com/"
  depends_on :macos
  pkg "SoundshedGuitar-1.6.0.pkg"
end
