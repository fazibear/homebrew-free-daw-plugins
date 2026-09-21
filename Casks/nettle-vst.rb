cask "nettle-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/nettle-macos.zip"
  name "Nettle"
  desc "Nettle explores the unique and relatively under-explored world of scanned synthesis ."
  homepage "https://plugins4free.com/plugin/3504"
  depends_on :macos
  artifact "nettle-macos", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
