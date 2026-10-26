cask "asian-dreamz-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DSK_Asian_Dreamz_Au.zip"
  name "Asian DreamZ"
  desc "DSK Asian DreamZ, asian intruments ."
  homepage "https://plugins4free.com/plugin/344"
  depends_on :macos
  artifact "DSK Asian Dreamz/DSK Asian Dreamz.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/DSK Asian Dreamz.component"
end
