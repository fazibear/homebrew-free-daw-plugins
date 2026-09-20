cask "vintage-marching-snare-roll-marching-band-drum-sna-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Marching-Snare_MacVST.zip"
  name "Vintage Marching Snare Roll Marching band drum snare"
  desc "Vintage Marching Snare Roll Marching band drum snare"
  homepage "https://plugins4free.com/plugin/3077"
  depends_on :macos
  artifact "Marching-Snare_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
