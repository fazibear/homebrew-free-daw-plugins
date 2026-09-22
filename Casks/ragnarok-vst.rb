cask "ragnarok-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/ragnarok_1_2_4_mac.pkg"
  name "Ragnarok"
  desc "Ragnarok is a software reincarnation of an existing, custom build (and therefore one of a kind) hardware analog synthesizer from 1980 ."
  homepage "https://plugins4free.com/plugin/2156"
  depends_on :macos
  pkg "ragnarok_1_2_4_mac.pkg"
end
