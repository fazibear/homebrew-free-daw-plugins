cask "afroplugin-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AfroPlugin_MacVST.zip"
  name "Afroplugin"
  desc "Afroplugin is a drum kit rompler designed for making great african beats : Dancehall, R&B, Reggaeton, Zouk, Compas, Afrobeats and more."
  homepage "https://plugins4free.com/plugin/3259"
  depends_on :macos
  artifact "AfroPlugin_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
