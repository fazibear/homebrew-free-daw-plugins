cask "doobie" do
  version :latest
  sha256 :no_check
  url "https://github.com/DatanoiseTV/doobie/releases/latest/download/Doobie-macOS.zip"
  name "Doobie"
  desc "Audio plugin by DatanoiseTV"
  homepage "https://github.com/DatanoiseTV/doobie"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end
