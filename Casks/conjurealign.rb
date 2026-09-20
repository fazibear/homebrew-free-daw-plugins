cask "conjurealign" do
  version :latest
  sha256 :no_check
  url "https://github.com/michaeljancsy/ConjureAlign/releases/latest/download/ConjureAlign-macOS.zip"
  name "ConjureAlign"
  desc "Audio alignment plugin"
  homepage "https://github.com/michaeljancsy/ConjureAlign"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end
