cask "sympreshost" do
  version "10.9.0-PianoToLife"
  sha256 "0ede3685facdb8e7004301f5d58ef92d66aacd3c15725d67acb7fc0ff52565c2"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.9.0-PianoToLife/PianoToLife-10.9.0-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.9.0-macOS-AppleSilicon.pkg"
end
