cask "dussek" do
  version "0.4.0"
  sha256 "a0c02e7e0d7a6f5e2c541a1b3cee1f06bcaea708fb88a251e169e7070763749a"
  url "https://github.com/ccoors/dussek/releases/download/v0.4.0/dussek-0.4.0-macos.pkg"
  name "dussek"
  desc "Free audio plugin"
  homepage "https://github.com/ccoors/dussek"
  depends_on :macos
  pkg "dussek-0.4.0-macos.pkg"
end
