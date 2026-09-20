cask "the-clap" do
  version :latest
  sha256 :no_check
  url "https://www.lowendcandy.com/downloads/The-Clap-macOS.zip"
  name "The Clap"
  desc "Audio plugin by Low End Candy"
  homepage "https://www.lowendcandy.com/the-clap"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end
