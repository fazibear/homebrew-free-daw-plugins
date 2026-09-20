cask "thai-gongs-chromatic-gongs-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Thai-Gongs_MacAU.zip"
  name "Thai Gongs Chromatic gongs"
  desc "Thai Gongs Chromatic gongs"
  homepage "https://plugins4free.com/plugin/2218"
  depends_on :macos
  artifact "Thai-Gongs_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
