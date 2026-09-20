cask "ovalizer-digital-glitch-emulator-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Ovalizer.vst.zip"
  name "Ovalizer Digital glitch emulator"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2938"
  depends_on :macos
  artifact "Ovalizer.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
