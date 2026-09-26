cask "emulator-i-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Emulator-I_MacAU.zip"
  name "Emulator I"
  desc "Emulator I is a rompler featuring the famous E-mu sampler soundbank ."
  homepage "https://plugins4free.com/plugin/2970"
  depends_on :macos
  artifact "Emulator I Mac AU/Emulator I.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
