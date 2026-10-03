cask "chainixraw" do
  version "1.1.0"
  sha256 "eeade76172f43d10ca9d47f3148de45fc5e056b409071b0569652892403cfe8e"
  url "https://github.com/remiblaze/ChainixRaw/releases/download/v1.1.0/ChainixRaw_Installer.pkg"
  name "ChainixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/ChainixRaw"
  depends_on :macos
  pkg "ChainixRaw_Installer.pkg"
end
