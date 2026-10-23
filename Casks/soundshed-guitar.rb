cask "soundshed-guitar" do
  version "1.7.1"
  sha256 :no_check
  url "https://downloads.soundshed.com/downloads/1.7.1/SoundshedGuitar-1.7.1-macOS-universal.pkg"
  name "Soundshed Guitar"
  desc "Free guitar and bass multi-effects plugin"
  homepage "https://guitar.soundshed.com/"
  depends_on :macos
  pkg "SoundshedGuitar-1.7.1-macOS-universal.pkg"
end
