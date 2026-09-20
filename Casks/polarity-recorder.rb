cask "polarity-recorder" do
  version :latest
  sha256 :no_check
  url "https://polarity.me/downloads/Polarity-Recorder-macOS.pkg"
  name "Polarity Recorder"
  desc "Plugin for capturing musical ideas and loops"
  homepage "https://polarity.me/posts/polarity-music/2026-08-28-polarity-recorder-plugin-capture-ideas-and-make-loops/"
  depends_on :macos
  pkg "Polarity-Recorder-macOS.pkg"
end
