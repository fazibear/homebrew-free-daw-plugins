cask "dussek" do
  version "0.3.2"
  sha256 "7293ffa376e9681ce6a002e6583ec38bb6ae31639d3e68729b3b9a144f67ec39"
  url "https://github.com/ccoors/dussek/releases/download/v0.3.2/dussek-0.3.2-macos.pkg"
  name "dussek"
  desc "Free audio plugin"
  homepage "https://github.com/ccoors/dussek"
  depends_on :macos
  pkg "dussek-0.3.2-macos.pkg"
end
