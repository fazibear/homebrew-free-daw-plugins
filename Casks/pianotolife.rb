cask "pianotolife" do
  version "11.3.8-PianoToLife"
  sha256 "19b670049c714b5ea499751379fea5ac7101bc393a128a884f61f7985d340ac6"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.3.8-PianoToLife/PianoToLife-11.3.8-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-11.3.8-macOS-AppleSilicon.pkg"
end
