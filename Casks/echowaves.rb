cask "echowaves" do
  version "1.0"
  sha256 "c9e5aabe5df8bc11eda8aa47480dfbc5c1e7dfa59849168eb584c9294d674c18"

  url "https://zaksound.com/api/download?file=echowaves-mac"
  name "Echowaves"
  desc "Delay plugin"
  homepage "https://zaksound.com/echowaves"

  depends_on :macos

  pkg "Echowaves.pkg"
end
