cask "torus" do
  version "0.1.0-beta-20261031-180636"
  sha256 "0e8303dbc1f66a43cdc76c31ffc7ae6cdceeb0539a08b71bd84247279265acfc"
  url "https://github.com/marsDSP/torus-releases/releases/download/0.1.0-beta-20261031-180636/Torus-0.1.0-beta-20261031-180636-macOS.dmg"
  name "torus-releases"
  desc "Free audio plugin"
  homepage "https://github.com/marsDSP/torus-releases"
  depends_on :macos
  container type: :dmg
  artifact "Torus.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/Torus.clap"
  artifact "Torus.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Torus.component"
  artifact "Torus.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Torus.vst3"
  app "Torus.app", target: "#{Dir.home}/Applications/Torus.app"
end
