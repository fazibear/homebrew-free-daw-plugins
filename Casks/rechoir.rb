cask "rechoir" do
  version "1.0.0"
  sha256 "7a1df5f354177c9abd9f2871a306e6b961df310c901dc199d535d5924ad2ff13"
  url "https://github.com/igorski/rechoir/releases/download/1.0.0/rechoir.1.0.0_macos.zip"
  name "rechoir"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/rechoir"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "VST/Rechoir.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Rechoir.vst", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "VST3/Rechoir.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Rechoir.vst3", recursive: true
    mkdir_p "{{user}}/Applications"
    copy "AU/Rechoir AUV3.app", "{{user}}/Applications/Rechoir AUV3.app", recursive: true
  end
end
