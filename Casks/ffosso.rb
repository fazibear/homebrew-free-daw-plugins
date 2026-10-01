cask "ffosso" do
  version "latest"
  sha256 :no_check
  url "https://releases.ffosso.com/FFOSSO-1.2.0.7558.pkg"
  name "FFOSSO"
  desc "This weeks FFOSSO unlock: Innerform. A delicate ensemble of plucked and short-articulation instruments – harp, piano, kannel, strings, and vibraphone – perfect for minimal, expressive, and rhythmically intricate compositions. It should be there to download when you open the FFOSSO app, which you can get from here: https://www.ffosso.com/"
  homepage "https://www.ffosso.com/"
  depends_on :macos
  pkg "FFOSSO-1.2.0.7558.pkg"
end
