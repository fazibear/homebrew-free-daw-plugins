cask "drumachine-r8-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Drumachine-R81.dmg"
  name "Drumachine R8"
  desc "A tweakable synthesized drum kit ."
  homepage "https://plugins4free.com/plugin/1056"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "kl./DRECEIVE R8.vst", "{{user}}/Library/Audio/Plug-Ins/VST/DRECEIVE R8.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "kl./Icon", "{{user}}/Library/Audio/Plug-Ins/VST/Icon"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "kl./VST:kl. alias", "{{user}}/Library/Audio/Plug-Ins/VST/VST:kl. alias"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst/Contents"
    copy "kl./DRUMACHINE R8.vst/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst/Contents"
    copy "kl./DRUMACHINE R8.vst/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst/Contents/PkgInfo"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst/Contents/MacOS"
    copy "kl./DRUMACHINE R8.vst/Contents/MacOS/DRUMACHINE R8", "{{user}}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst/Contents/MacOS/DRUMACHINE R8"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst/Contents/Resources"
    copy "kl./DRUMACHINE R8.vst/Contents/Resources/DRUMACHINE R8.rsrc", "{{user}}/Library/Audio/Plug-Ins/VST/DRUMACHINE R8.vst/Contents/Resources/DRUMACHINE R8.rsrc"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/Hidden"
    copy "kl./Hidden/DrumachineBack.jpg", "{{user}}/Library/Audio/Plug-Ins/VST/Hidden/DrumachineBack.jpg"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST/Hidden"
    copy "kl./Hidden/DrumachineBack2.jpg", "{{user}}/Library/Audio/Plug-Ins/VST/Hidden/DrumachineBack2.jpg"
  end
end
