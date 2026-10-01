cask "808-bass-module-2-lite-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/808-Bass-Module-2-Lite_MacAU.zip"
  name "808 Bass Module 2 Lite"
  desc "808 Bass Module 2 Lite is a 808 bass ROMpler ."
  homepage "https://plugins4free.com/plugin/2709"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "808 Bass Module 2 Lite v2.0 MAC AU/808 BM2 lite.component", "{{user}}/Library/Audio/Plug-Ins/Components/808 BM2 lite.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "808 Bass Module 2 Lite v2.0 MAC AU/808 Bass Module 2 Lite.pdf", "{{user}}/Library/Audio/Plug-Ins/Components/808 Bass Module 2 Lite.pdf"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "808 Bass Module 2 Lite v2.0 MAC AU/808 Bass Module 2 Lite.PNG", "{{user}}/Library/Audio/Plug-Ins/Components/808 Bass Module 2 Lite.PNG"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "808 Bass Module 2 Lite v2.0 MAC AU/BeatMaker.URL", "{{user}}/Library/Audio/Plug-Ins/Components/BeatMaker.URL"
  end
end
