cask "abctrain" do
  version "2.3.0"
  sha256 "d12f2191297e177fd86bcc124fb3afc1ac5282295b536987f3b4a0559e87d617"
  url "https://github.com/bogggare567/abcTrain/releases/download/v2.3.0/abcTrain-macOS-2.3.0.dmg"
  name "abcTrain"
  desc "Free audio plugin"
  homepage "https://github.com/bogggare567/abcTrain"
  depends_on :macos
  container type: :dmg
  pkg "abcTrain-2.3.0.pkg"
end
