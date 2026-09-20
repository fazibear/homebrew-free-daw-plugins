cask "testtone" do
  version :latest
  sha256 :no_check
  url "https://github.com/Jun-Murakami/TestTone/releases/latest/download/TestTone-macOS.zip"
  name "TestTone"
  desc "Audio test tone generator plugin"
  homepage "https://github.com/Jun-Murakami/TestTone"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end
