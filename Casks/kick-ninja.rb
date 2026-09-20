cask "kick-ninja" do
  version "1.4.1"
  sha256 :no_check
  url "https://dsp.thehim.com/downloads/KickNinja-#{version}-macOS.pkg"
  name "Kick Ninja"
  desc "Kick drum synthesizer and effects plugin"
  homepage "https://dsp.thehim.com/downloads"
  depends_on :macos
  pkg "KickNinja-#{version}-macOS.pkg"
end
