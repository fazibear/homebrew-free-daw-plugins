cask "kick-n-snare-ex-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/KicknSnareEX_MacAU.zip"
  name "Kick-n-Snare EX"
  desc "Kick-n-Snare EX is a drum rompler for EDM ."
  homepage "https://plugins4free.com/plugin/2963"
  depends_on :macos
  artifact "Kick n Snare EX/Kick n Snare EX.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
