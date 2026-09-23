cask "elsita-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Elsita-V_MacAU.zip"
  name "Elsita"
  desc "Elsita is a soviet analog drum synthesizer produced from 1989 until 1991, when RMIF went bankrupt."
  homepage "https://plugins4free.com/plugin/3125"
  depends_on :macos
  artifact "Elsita-V (Mac AU)/Elsita.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
