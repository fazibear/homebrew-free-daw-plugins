cask "gr-8-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/gr-8-au.zip"
  name "GR-8"
  desc "GR-8 is an 8 voices virtual analog synthesizer with built-in effects and an arpeggiator."
  homepage "https://plugins4free.com/plugin/3491"
  depends_on :macos
  pkg "GR-8-AU-2021-10-08/GR-8.pkg"
end
