cask "abctrain" do
  version "2.0.1"
  sha256 "9c7773ac6fa49b68e53983bb4ed774207e3b62144cfdf0dcf432292daf529034"
  url "https://github.com/bogggare567/abcTrain/releases/download/v2.0.1/abcTrain-macOS-2.0.1.dmg"
  name "abcTrain"
  desc "Free audio plugin"
  homepage "https://github.com/bogggare567/abcTrain"
  depends_on :macos
  container type: :dmg
  pkg "abcTrain-2.0.1.pkg"
end
