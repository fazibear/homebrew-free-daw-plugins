cask "dussek" do
  version "0.4.1"
  sha256 "96e0c2c55168c4d67482b7d0b094f2ef10b06e56977e33abbbf2895349540a10"
  url "https://github.com/ccoors/dussek/releases/download/v0.4.1/dussek-0.4.1-macos.pkg"
  name "dussek"
  desc "Free audio plugin"
  homepage "https://github.com/ccoors/dussek"
  depends_on :macos
  pkg "dussek-0.4.1-macos.pkg"
end
