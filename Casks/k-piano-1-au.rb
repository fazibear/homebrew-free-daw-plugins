cask "k-piano-1-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VCSL-K-Piano1_MacAU.zip"
  name "K Piano 1"
  desc "K Piano 1 is a Kawai Grand Piano ."
  homepage "https://plugins4free.com/plugin/3574"
  depends_on :macos
  artifact "VCSL-K-Piano1_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
