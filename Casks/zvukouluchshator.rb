cask "zvukouluchshator" do
  version "0.1.0"
  sha256 "5eb7c8239dc848ab2f70d77f3a2cbd1aae43b2bc6b175d7a68b959ea0621fdff"
  url "https://github.com/FATnvStudio/zvukouluchshator/releases/download/v0.1.0/Zvukouluchshator-v0.1.0-macOS.zip"
  name "zvukouluchshator"
  desc "Free audio plugin"
  homepage "https://github.com/FATnvStudio/zvukouluchshator"
  depends_on :macos
  artifact "Zvukouluchshator/AU/Zvukouluchshator.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Zvukouluchshator.component"
  artifact "Zvukouluchshator/VST3/Zvukouluchshator.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Zvukouluchshator.vst3"
end
