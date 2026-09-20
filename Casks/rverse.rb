cask "rverse" do
  version "1.1.0"
  sha256 :no_check
  url "https://github.com/SamuFL/rverse/releases/download/v#{version}/RVRSE-#{version}-macOS.pkg"
  name "RVRSE"
  desc "Reverse-reverb riser and hit designer audio plugin"
  homepage "https://github.com/SamuFL/rverse"
  depends_on :macos
  pkg "RVRSE-#{version}-macOS.pkg"
end
