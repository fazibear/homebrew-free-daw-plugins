cask "rverse" do
  version "1.1.0"
  sha256 "d6071e3e9509383cb8e132526f3925db31bab3c20bb859de016d5aa03ab7ef76"
  url "https://github.com/SamuFL/rverse/releases/download/v1.1.0/RVRSE-1.1.0-macOS.pkg"
  name "RVRSE"
  desc "Reverse-reverb riser and hit designer audio plugin"
  homepage "https://github.com/SamuFL/rverse"
  depends_on :macos
  pkg "RVRSE-1.1.0-macOS.pkg"
end
