cask "bd-909-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Synsonic-BD-909-MAC-VST.pkg"
  name "BD-909"
  desc "BD-909 is a TR-909 bass drum emulation."
  homepage "https://plugins4free.com/plugin/2774"
  depends_on :macos
  pkg "Synsonic-BD-909-MAC-VST.pkg"
end
