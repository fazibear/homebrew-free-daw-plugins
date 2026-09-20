cask "thai-gongs-chromatic-gongs-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Thai-Gongs_MacVST.zip"
  name "Thai Gongs Chromatic gongs"
  desc "Thai Gongs Chromatic gongs"
  homepage "https://plugins4free.com/plugin/2218"
  depends_on :macos
  artifact "Thai-Gongs_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
