cask "vstsid-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/vstsid_MacVST.zip"
  name "VSTSID"
  desc "VSTSID is a Commodore 64 sound chip emulation."
  homepage "https://plugins4free.com/plugin/3362"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "macOS/VST/vstsid.vst", "{{user}}/Library/Audio/Plug-Ins/VST/vstsid.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "macOS/VST/.DS_Store", "{{user}}/Library/Audio/Plug-Ins/VST/.DS_Store"
  end
end
