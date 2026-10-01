cask "afrokeyz-lite-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/AfroKeyz_MacVST.zip"
  name "Afrokeyz Lite"
  desc "Afrokeyz Lite is a keyboard / synthesizer rompler designed for making african beats as Dancehall, R&B, Reggaeton, Lo-fi, Afrobeats..."
  homepage "https://plugins4free.com/plugin/3413"
  depends_on :macos
  artifact "VST/Afro Keyz Lite.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Afro Keyz Lite.vst"
end
