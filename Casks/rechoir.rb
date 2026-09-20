cask "rechoir" do
  version "1.0.0"
  sha256 :no_check
  url "https://github.com/igorski/rechoir/releases/download/1.0.0/rechoir.1.0.0_macos.zip"
  name "rechoir"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/rechoir"
  depends_on :macos
  artifact "rechoir.1.0.0_macos", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end
