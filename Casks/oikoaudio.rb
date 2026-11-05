cask "oikoaudio" do
  version "inton/v0.5.1"
  sha256 "6fc9158cc96418201776e9a41791c5218e5a9ac4ebd81c2e73c5609628a57f70"
  url "https://github.com/oikoaudio/oikoaudio/releases/download/inton/v0.5.1/inton-macos-universal.zip"
  name "oikoaudio"
  desc "Free audio plugin"
  homepage "https://github.com/oikoaudio/oikoaudio"
  depends_on :macos
  pkg "vendor/mts-esp/libMTS/Mac/x86_64_ARM/libMTSMac_v1.03.pkg"
end
