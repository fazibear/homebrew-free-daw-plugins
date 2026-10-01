cask "deep-fry" do
  version "0.3.1"
  sha256 "7ed31b770110168b90e22892fde4a2b184da6bbbf606a4f5a129a737519dccb8"
  url "https://github.com/mitchaiet/deep-fry/releases/download/v0.3.1/Deep-Fry-0.3.1-macOS-universal.zip"
  name "deep-fry"
  desc "Free audio plugin"
  homepage "https://github.com/mitchaiet/deep-fry"
  depends_on :macos
  artifact "Deep-Fry-0.3.1-macOS-universal/AU/Deep Fry.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Deep Fry.component"
  artifact "Deep-Fry-0.3.1-macOS-universal/VST3/Deep Fry.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Deep Fry.vst3"
  app "Deep-Fry-0.3.1-macOS-universal/Standalone/Deep Fry.app", target: "#{Dir.home}/Applications/Deep Fry.app"
end
