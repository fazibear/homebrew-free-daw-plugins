cask "phoqer" do
  version "1.0.0"
  sha256 "0f1260582436b528f6133a4ece29811c451c5fab172bd9f1935fe55415f03328"
  url "https://github.com/lew0nn/phoqer/releases/download/v1.0.0/PHOQER-1.0.0-macOS-AU.zip"
  name "phoqer"
  desc "Free audio plugin"
  homepage "https://github.com/lew0nn/phoqer"
  depends_on :macos
  artifact "PHOQER.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/PHOQER.component"
end
