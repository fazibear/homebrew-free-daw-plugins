cask "okamisf2player" do
  version "1.2.6"
  sha256 "eb7d6f6bc0862d6e561d44584645db382c699faed24907b5def016b8054ab4f0"
  url "https://github.com/marguento/OkamiSF2Player/releases/download/v1.2.6/Okami-SF2-Player-1.2.6.pkg"
  name "OkamiSF2Player"
  desc "Free audio plugin"
  homepage "https://github.com/marguento/OkamiSF2Player"
  depends_on :macos
  pkg "Okami-SF2-Player-1.2.6.pkg"
end
