cask "reevr" do
  version "1.4.0"
  sha256 "92e069e942ac0f286169b32d0fd175483a10e07da6470a3582c93cc8a741c9e3"
  url "https://github.com/tiagolr/reevr/releases/download/v1.4.0/reevr-macos-v1.4.0.zip"
  name "reevr"
  desc "Free audio plugin"
  homepage "https://github.com/tiagolr/reevr"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "reevr-macos/AU/REEV-R.component", "{{user}}/Library/Audio/Plug-Ins/Components/REEV-R.component", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/LV2"
    copy "reevr-macos/LV2/REEV-R.lv2", "{{user}}/Library/Audio/Plug-Ins/LV2/REEV-R.lv2", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "reevr-macos/VST3/REEV-R.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/REEV-R.vst3", recursive: true
  end
end
