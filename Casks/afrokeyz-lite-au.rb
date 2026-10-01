cask "afrokeyz-lite-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AfroKeyz_MacAU.zip"
  name "Afrokeyz Lite"
  desc "Afrokeyz Lite is a keyboard / synthesizer rompler designed for making african beats as Dancehall, R&B, Reggaeton, Lo-fi, Afrobeats..."
  homepage "https://plugins4free.com/plugin/3413"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "AU/Afro Keyz Lite.component", "{{user}}/Library/Audio/Plug-Ins/Components/Afro Keyz Lite.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "AU/.DS_Store", "{{user}}/Library/Audio/Plug-Ins/Components/.DS_Store"
  end
end
