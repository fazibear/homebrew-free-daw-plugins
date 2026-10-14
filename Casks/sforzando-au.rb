cask "sforzando-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/sforzando_Mac.zip"
  name "sforzando"
  desc "sforzando is a simple but powerful SFZ Player ."
  homepage "https://plugins4free.com/plugin/1371"
  depends_on :macos
  pkg "MAC_sforzando_v1.844.pkg"
end
