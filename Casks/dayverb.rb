cask "dayverb" do
  version "0.4.0"
  sha256 "d527c756ee58fb2a2fc46709f5fd042bad13cd87b42a29734ce1d830f89fabeb"
  url "https://github.com/fushugaku/dayverb/releases/download/v0.4.0/Dayverb-0.4.0-macOS-universal.pkg"
  name "dayverb"
  desc "Free audio plugin"
  homepage "https://github.com/fushugaku/dayverb"
  depends_on :macos
  pkg "Dayverb-0.4.0-macOS-universal.pkg"
end
