cask "serpo-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Serpo-Mac-VST.zip"
  name "Serpo"
  desc "Serpo is an extremely simple to use free virtual instrument packed with original sounds recorded by artist from all over the world ."
  homepage "https://plugins4free.com/plugin/2567"
  depends_on :macos
  artifact "Serpo - Mac - VST/Serpo.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Serpo.vst"
end
