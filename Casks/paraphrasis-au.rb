cask "paraphrasis-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/paraphrasis_mac.zip"
  name "Paraphrasis"
  desc "Paraphrasis is a spectral sampler resynthesizer which can model any sound with only one sonic sample."
  homepage "https://plugins4free.com/plugin/2098"
  depends_on :macos
  artifact "paraphrasis_mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
