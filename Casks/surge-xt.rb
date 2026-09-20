cask "surge-xt" do
  version :latest
  sha256 :no_check
  url "https://github.com/surge-synthesizer/surge/releases/latest/download/surge-xt-macos-NIGHTLY-pluginsonly.zip"
  name "Surge XT"
  desc "Free and open-source hybrid synthesizer plugin"
  homepage "https://surge-synthesizer.github.io/"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
  artifact "CLAP", target: "/Library/Audio/Plug-Ins/CLAP"
end
