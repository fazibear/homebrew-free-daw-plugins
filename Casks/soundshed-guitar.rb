cask "soundshed-guitar" do
  version "1.5.0"
  sha256 :no_check
  url "https://guitar.soundshed.com/downloads/Soundshed-Guitar-#{version}-macOS.pkg"
  name "Soundshed Guitar"
  desc "Free guitar and bass multi-effects plugin"
  homepage "https://guitar.soundshed.com/"
  depends_on :macos
  pkg "Soundshed-Guitar-#{version}-macOS.pkg"
end
