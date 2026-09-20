cask "gala" do
  version :latest
  sha256 :no_check
  url "https://sognevo.com/gala/downloads/Gala-macOS.pkg"
  name "Gala"
  desc "Audio plugin by Sognevo"
  homepage "https://sognevo.com/gala/"
  depends_on :macos
  pkg "Gala-macOS.pkg"
end
