cask "pianotolife" do
  version "11.2.6-PianoToLife"
  sha256 "a68708813f47f6fd0dd09622bf67b15c4e7ef114aa14cd685766f8de2a2103d7"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.2.6-PianoToLife/PianoToLife-11.2.6-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-11.2.6-macOS-AppleSilicon.pkg"
end
