cask "drumtroop-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DrumTROOP-MAC-AU.zip"
  name "DrumTROOP"
  desc "DrumTROOP is a drum kit rompler coming with 20 free drum kits."
  homepage "https://plugins4free.com/plugin/2363"
  depends_on :macos
  pkg "MSPRuntime.pkg"
end
