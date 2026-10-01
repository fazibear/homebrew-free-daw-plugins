cask "scorchitraw" do
  version "1.0.1"
  sha256 "a3241434cf0ca5d4c47519f7e8cf5afe8d872fcbfd7f8cc730ea31f95616620e"
  url "https://github.com/remiblaze/ScorchitRaw/releases/download/v1.0.1/ScorchitRaw_Installer.pkg"
  name "ScorchitRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/ScorchitRaw"
  depends_on :macos
  pkg "ScorchitRaw_Installer.pkg"
end
