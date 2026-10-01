cask "808-bass-module-2-lite-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/808-Bass-Module-2-Lite_MacVST.zip"
  name "808 Bass Module 2 Lite"
  desc "808 Bass Module 2 Lite is a 808 bass ROMpler ."
  homepage "https://plugins4free.com/plugin/2709"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "808 Bass Module 2 Lite v2.0 MAC VST/808 BM2 lite.vst", "{{user}}/Library/Audio/Plug-Ins/VST/808 BM2 lite.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "808 Bass Module 2 Lite v2.0 MAC VST/808 Bass Module 2 Lite.pdf", "{{user}}/Library/Audio/Plug-Ins/VST/808 Bass Module 2 Lite.pdf"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "808 Bass Module 2 Lite v2.0 MAC VST/808 Bass Module 2 Lite.PNG", "{{user}}/Library/Audio/Plug-Ins/VST/808 Bass Module 2 Lite.PNG"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "808 Bass Module 2 Lite v2.0 MAC VST/BeatMaker.URL", "{{user}}/Library/Audio/Plug-Ins/VST/BeatMaker.URL"
  end
end
