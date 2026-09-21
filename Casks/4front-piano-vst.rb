cask "4front-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/4fpiano-osx.zip"
  name "4Front Piano"
  desc "4Front Piano"
  homepage "https://plugins4free.com/plugin/971"
  depends_on :macos
  artifact "4fpiano-osx", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
