cask "sympreshost" do
  version "9.4.7-PianoToLife"
  sha256 "386bf68ef77bc36a0d9977c662e91b68734c55b17e206ecda850be7ae200d661"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.4.7-PianoToLife/PianoToLife-9.4.7-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-9.4.7-macOS-AppleSilicon.pkg"
end
