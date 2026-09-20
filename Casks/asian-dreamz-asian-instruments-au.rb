cask "asian-dreamz-asian-instruments-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_Asian_Dreamz_Au.zip"
  name "Asian DreamZ Asian instruments"
  desc "Asian DreamZ Asian instruments"
  homepage "https://plugins4free.com/plugin/344"
  depends_on :macos
  artifact "DSK_Asian_Dreamz_Au", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
