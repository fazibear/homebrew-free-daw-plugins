cask "k3-v-extended-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/K3-V_MacAU.zip"
  name "K3-V Extended"
  desc "K3-V Extended is an advanced emulation of the Kawai K3 wavetable synthesizer."
  homepage "https://plugins4free.com/plugin/2928"
  depends_on :macos
  artifact "K3-V (Mac AU)/K3-V.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
