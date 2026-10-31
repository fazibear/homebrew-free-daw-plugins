cask "jenitor" do
  version "0.6.2"
  sha256 "79242ba9dbbc0ba9f137cbadc8a6d30279e144d83c93c47ef1647c356d2d7317"
  url "https://github.com/helysx99/Jenitor/releases/download/v0.6.2/JENITOR-macos-AU.zip"
  name "Jenitor"
  desc "Free audio plugin"
  homepage "https://github.com/helysx99/Jenitor"
  depends_on :macos
  artifact "JENITOR MFX.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/JENITOR MFX.component"
  artifact "JENITOR.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/JENITOR.component"
end
