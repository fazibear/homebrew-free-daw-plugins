cask "bazz-murda-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DC_Bazz_Murda_MAC_AU.zip"
  name "Bazz Murda"
  desc "Bazz Murda Free is a bass/kick synthesizer ."
  homepage "https://plugins4free.com/plugin/2519"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "DC_Bazz_Murda_v1_8_FREE_OSX_AU_32bit/Bazz_Murda_v1_8_FREE_32bit.component", "{{user}}/Library/Audio/Plug-Ins/Components/Bazz_Murda_v1_8_FREE_32bit.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "DC_Bazz_Murda_v1_8_FREE_OSX_AU_32bit/DC_license.txt", "{{user}}/Library/Audio/Plug-Ins/Components/DC_license.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "DC_Bazz_Murda_v1_8_FREE_OSX_AU_32bit/DC_Readme_Free.html", "{{user}}/Library/Audio/Plug-Ins/Components/DC_Readme_Free.html"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "DC_Bazz_Murda_v1_8_FREE_OSX_AU_32bit/favicon.ico", "{{user}}/Library/Audio/Plug-Ins/Components/favicon.ico"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/res"
    copy "DC_Bazz_Murda_v1_8_FREE_OSX_AU_32bit/res/DistoCore.png", "{{user}}/Library/Audio/Plug-Ins/Components/res/DistoCore.png"
  end
end
