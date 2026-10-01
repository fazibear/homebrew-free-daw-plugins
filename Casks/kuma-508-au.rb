cask "kuma-508-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/BAEU-Kuma-508_MacAU.zip"
  name "Kuma 508"
  desc "Kuma 508 is a hybrid FM / analog synth thats has 5 FM algorithms plus 3 single Oscillators mode."
  homepage "https://plugins4free.com/plugin/3328"
  depends_on :macos
  artifact "Mac OSX/Kuma 508/Kuma 508.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Kuma 508.component"
end
