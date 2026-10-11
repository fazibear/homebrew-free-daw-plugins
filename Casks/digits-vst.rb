cask "digits-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DigitsMac_2_1.zip"
  name "Digits"
  desc "Digits is a phase distortion synthesizer inspired by Casio's CZ series but takes that form of synthesis to the limit."
  homepage "https://plugins4free.com/plugin/1306"
  depends_on :macos
  pkg "Digits2.1/DigitsMac_2_1.pkg"
end
