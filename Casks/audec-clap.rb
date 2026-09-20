cask "audec-clap" do
  version :latest
  sha256 :no_check
  url "https://audec-music.com/downloads/Audec-Clap-macOS.zip"
  name "Audec Clap"
  desc "Audio plugin by Audec Music"
  homepage "https://audec-music.com/clap/"
  depends_on :macos
  artifact "Audec Clap.clap", target: "/Library/Audio/Plug-Ins/CLAP"
end
