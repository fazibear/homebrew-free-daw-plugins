cask "wavelength-trance" do
  version "0.1.0"
  sha256 "8a9748e6b3a43694236ea0a0dee32747defa558b1ce1d97197a8b9b8114a2ecd"
  url "https://github.com/austinginder/wavelength-trance/releases/download/v0.1.0/wavelength-trance-macos.zip"
  name "wavelength-trance"
  desc "Free audio plugin"
  homepage "https://github.com/austinginder/wavelength-trance"
  depends_on :macos
  artifact "Wavelength Trance/Wavelength Trance.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/Wavelength Trance.clap"
  artifact "Wavelength Trance/Wavelength Trance.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Wavelength Trance.component"
  artifact "Wavelength Trance/Wavelength Trance.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Wavelength Trance.vst3"
  app "Wavelength Trance/Wavelength Trance.app", target: "#{Dir.home}/Applications/Wavelength Trance.app"
end
