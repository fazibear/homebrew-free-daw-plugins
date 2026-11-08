cask "arson-comp" do
  version "0.2.0"
  sha256 "c8d0bae2ebe1bfc88a0057db4958fb49e0489adc4fad4772828d7a77e162bfb5"
  url "https://github.com/masarray/arson-comp/releases/download/v0.2.0/ArSonComp-0.2.0-macOS-Universal-AdHoc.pkg"
  name "arson-comp"
  desc "Free audio plugin"
  homepage "https://github.com/masarray/arson-comp"
  depends_on :macos
  pkg "ArSonComp-0.2.0-macOS-Universal-AdHoc.pkg"
end
