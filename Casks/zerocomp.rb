cask "zerocomp" do
  version :latest
  sha256 :no_check
  url "https://github.com/Jun-Murakami/ZeroComp/releases/latest/download/ZeroComp-macOS.zip"
  name "ZeroComp"
  desc "Compressor audio plugin"
  homepage "https://github.com/Jun-Murakami/ZeroComp"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end
