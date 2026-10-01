cask "forgexraw" do
  version "1.0.1"
  sha256 "82a15f4aba51bfea22d01024104453f78e5d2ac14fb2a34a777cc63b5b4cbbea"
  url "https://github.com/remiblaze/ForgexRaw/releases/download/v1.0.1/ForgexRaw_Installer.pkg"
  name "ForgexRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/ForgexRaw"
  depends_on :macos
  pkg "ForgexRaw_Installer.pkg"
end
