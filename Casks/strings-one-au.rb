cask "strings-one-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/StringsOne.zip"
  name "Strings One"
  desc "Strings One features solo strings and string ensembles ."
  homepage "https://plugins4free.com/plugin/3779"
  depends_on :macos
  pkg "StringsOne/Plugin_Installer/Neo_Orchestra_Installer.pkg"
end
