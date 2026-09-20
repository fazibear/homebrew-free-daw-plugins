cask "regrader" do
  version "1.0.5"
  sha256 :no_check
  url "https://github.com/igorski/regrader/releases/download/1.0.5/regrader.1.0.5_macos.zip"
  name "regrader"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/regrader"
  depends_on :macos
  artifact "regrader.1.0.5_macos", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end
