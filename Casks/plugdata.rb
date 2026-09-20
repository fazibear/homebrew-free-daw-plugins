cask "plugdata" do
  version :latest
  sha256 :no_check
  url "https://github.com/plugdata-team/plugdata/releases/latest/download/plugdata-macOS-Universal.pkg"
  name "plugdata"
  desc "Visual programming environment and audio plugin"
  homepage "https://plugdata.org/"
  depends_on :macos
  pkg "plugdata-macOS-Universal.pkg"
end
