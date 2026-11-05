cask "phosphor-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Audio_Damage_Phosphor_Mac.zip"
  name "Phosphor"
  desc "Phosphor is a vintage digital additive synthesizer modeled on the alphaSyntauri."
  homepage "https://plugins4free.com/plugin/3746"
  depends_on :macos
  pkg "Phosphor_120.pkg"
end
