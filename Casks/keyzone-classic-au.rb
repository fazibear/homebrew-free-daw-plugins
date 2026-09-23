cask "keyzone-classic-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/KeyzoneClassicAudioUnit.pkg"
  name "Keyzone Classic"
  desc "Keyzone Classic is a sample based piano ."
  homepage "https://plugins4free.com/plugin/2848"
  depends_on :macos
  pkg "KeyzoneClassicAudioUnit.pkg"
end
