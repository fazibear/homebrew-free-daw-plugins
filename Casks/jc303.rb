cask "jc303" do
  version "0.12.3"
  sha256 "01fc97a8a133c3100b946cd3364e09a1142236bed4c4add1775aad59bd63d015"
  url "https://github.com/midilab/jc303/releases/download/v0.12.3/jc303-0.12.3-macos_universal-plugins.zip"
  name "jc303"
  desc "Free audio plugin"
  homepage "https://github.com/midilab/jc303"
  depends_on :macos
  artifact "jc303-0.12.3-macos_universal-plugins", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end
