cask "afrokeyz-lite-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AfroKeyz_MacVST.zip"
  name "Afrokeyz Lite"
  desc "Afrokeyz Lite is a keyboard / synthesizer rompler designed for making african beats as Dancehall, R&B, Reggaeton, Lo-fi, Afrobeats..."
  homepage "https://plugins4free.com/plugin/3413"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VST/Afro Keyz Lite.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Afro Keyz Lite.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "VST/.DS_Store", "{{user}}/Library/Audio/Plug-Ins/VST/.DS_Store"
  end
end
