cask "x-or" do
  version :latest
  sha256 :no_check
  url "https://mouseplugins.com/downloads/X-Or-macOS.zip"
  name "X-Or"
  desc "Audio plugin by Mouse Plugins"
  homepage "https://mouseplugins.com/en/products/xor"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end
