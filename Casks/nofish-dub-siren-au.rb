cask "nofish-dub-siren-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/nofish-Dub-Siren_MacAU-1.01.zip"
  name "nofish Dub Siren"
  desc "nofish Dub Siren is a monophonic synth aiming to emulate these DIY devices used by Dub Sound Systems."
  homepage "https://plugins4free.com/plugin/2483"
  depends_on :macos
  artifact "nofish Dub Siren Mac AU (1.0.1)/nofishs_Dub_Sirene.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
