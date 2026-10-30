cask "abctrain" do
  version "2.2.0"
  sha256 "4051b2107c252f3f3bba8bd0c1c86496a6398cbfce3072f283d4eccf9a1a1372"
  url "https://github.com/bogggare567/abcTrain/releases/download/v2.2.0/abcTrain-macOS-2.2.0.dmg"
  name "abcTrain"
  desc "Free audio plugin"
  homepage "https://github.com/bogggare567/abcTrain"
  depends_on :macos
  container type: :dmg
  pkg "abcTrain-2.2.0.pkg"
end
