cask "aspikprojects" do
  version "2.0.0"
  sha256 "4aa490a77a4fe4e975e065f21643c9a196c98b0dcc54bb2fb5338a6d3f64303f"
  url "https://github.com/DoomyDwyer/ASPiKProjects/releases/download/2.0.0/Doomsville_AU_MacOS_arm64_2.0.0.zip"
  name "ASPiKProjects"
  desc "Free audio plugin"
  homepage "https://github.com/DoomyDwyer/ASPiKProjects"
  depends_on :macos
  artifact "AutoQ.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AutoQ.component"
  artifact "Howler.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Howler.component"
  artifact "Memento.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Memento.component"
  artifact "Reliq.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Reliq.component"
  artifact "Unphased.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Unphased.component"
end
