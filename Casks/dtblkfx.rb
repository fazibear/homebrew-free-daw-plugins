cask "dtblkfx" do
  version "1.0"
  sha256 "3a7fed3d061cf688a96b0a5bfa41a1aebf7c9e3c417b49d84313ed0aeb18fec1"
  url "https://github.com/shuklabhay/dtblkfx-osx-recompiled/releases/download/v1.0/DtBlkFx-v1.0-macOS-universal-AUv2.zip"
  name "dtblkfx"
  desc "Free audio plugin"
  homepage "https://github.com/shuklabhay/dtblkfx-osx-recompiled"
  depends_on :macos
  artifact "DtBlkFx.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
