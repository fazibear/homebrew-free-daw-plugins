cask "bazz-murda-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DC_Bazz_Murda_MAC_VST.zip"
  name "Bazz Murda"
  desc "Bazz Murda Free is a bass/kick synthesizer ."
  homepage "https://plugins4free.com/plugin/2519"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "DC_Bazz_Murda_v1_8_FREE_OSX_VST_32bit/Bazz_Murda_v1_8_FREE_32bit.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Bazz_Murda_v1_8_FREE_32bit.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "DC_Bazz_Murda_v1_8_FREE_OSX_VST_32bit/DC_license.txt", "{{user}}/Library/Audio/Plug-Ins/VST/DC_license.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "DC_Bazz_Murda_v1_8_FREE_OSX_VST_32bit/DC_Readme_Free.html", "{{user}}/Library/Audio/Plug-Ins/VST/DC_Readme_Free.html"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "DC_Bazz_Murda_v1_8_FREE_OSX_VST_32bit/favicon.ico", "{{user}}/Library/Audio/Plug-Ins/VST/favicon.ico"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/res"
    copy "DC_Bazz_Murda_v1_8_FREE_OSX_VST_32bit/res/DistoCore.png", "{{user}}/Library/Audio/Plug-Ins/VST/res/DistoCore.png"
  end
end
