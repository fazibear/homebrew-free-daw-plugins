cask "zebralette-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Zebra2_293_12092_Mac.zip"
  name "Zebralette"
  desc "Zebralette is a hybrid synth ."
  homepage "https://plugins4free.com/plugin/1769"
  depends_on :macos
  pkg "Zebra2_12092_Mac/Zebra2 2.9.3 Installer.pkg"
end
