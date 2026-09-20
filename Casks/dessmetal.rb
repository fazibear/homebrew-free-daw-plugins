cask "dessmetal" do
  version "0.1.1"
  sha256 "fa38f6e13462c5f64fc9c97b428a87fd17a02631da3edda066f5ee43f4c35f51"
  url "https://github.com/appdess/dessmetal/releases/download/v0.1.1/DessMetal-v0.1.1-mac-dSYMs.zip"
  name "dessmetal"
  desc "Free audio plugin"
  homepage "https://github.com/appdess/dessmetal"
  depends_on :macos
  artifact "DessMetal-v0.1.1-mac-dSYMs", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end
