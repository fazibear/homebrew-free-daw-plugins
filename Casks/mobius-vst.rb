cask "mobius-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Mobius.pkg"
  name "Mobius"
  desc "Mobius is a real-time 8 part looper / slicer designed for live creation of audio loops."
  homepage "https://plugins4free.com/plugin/3330"
  depends_on :macos
  pkg "Mobius.pkg"
end
