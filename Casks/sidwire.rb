cask "sidwire" do
  version "0.2.0"
  sha256 "ab6d2026a5e8357bf20ba5ae86d06d4c5e46d8efddcb6b67bf4bd1dbbc781b03"
  url "https://github.com/dantaipan/sidwire/releases/download/v0.2.0/SIDwire-0.2.0.dmg"
  name "sidwire"
  desc "Free audio plugin"
  homepage "https://github.com/dantaipan/sidwire"
  depends_on :macos
  container type: :dmg
  artifact "Plug-ins/SIDwire.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/SIDwire.component"
  artifact "Plug-ins/SIDwire.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/SIDwire.vst3"
  app "SIDwire.app", target: "#{Dir.home}/Applications/SIDwire.app"
end
