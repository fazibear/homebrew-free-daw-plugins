cask "rechoir" do
  version "1.0.0"
  sha256 "7a1df5f354177c9abd9f2871a306e6b961df310c901dc199d535d5924ad2ff13"
  url "https://github.com/igorski/rechoir/releases/download/1.0.0/rechoir.1.0.0_macos.zip"
  name "rechoir"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/rechoir"
  depends_on :macos
  artifact "VST/Rechoir.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Rechoir.vst"
  artifact "VST3/Rechoir.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Rechoir.vst3"
  app "AU/Rechoir AUV3.app", target: "#{Dir.home}/Applications/Rechoir AUV3.app"
end
