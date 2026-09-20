cask "etherealwinds-harp-ii-ce-celtic-harp-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/EWHarp2_AudioUnit.zip"
  name "Etherealwinds Harp II CE Celtic harp"
  desc "Etherealwinds Harp II CE Celtic harp"
  homepage "https://plugins4free.com/plugin/2857"
  depends_on :macos
  artifact "EWHarp2_AudioUnit", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
