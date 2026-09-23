cask "keyzone-classic-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/KeyzoneClassicVST.pkg"
  name "Keyzone Classic"
  desc "Keyzone Classic is a sample based piano ."
  homepage "https://plugins4free.com/plugin/2848"
  depends_on :macos
  pkg "KeyzoneClassicVST.pkg"
end
