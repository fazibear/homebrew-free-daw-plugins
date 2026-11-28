cask "varimu660" do
  version "1.1.0"
  sha256 "9e88b4d51104573b4166a138de1e422d669bbd35008154ffa4e89061191fe216"
  url "https://github.com/trondmorset-lab/VariMU660/releases/download/v1.1.0/VariMu660-macOS.pkg"
  name "VariMU660"
  desc "Free audio plugin"
  homepage "https://github.com/trondmorset-lab/VariMU660"
  depends_on :macos
  pkg "VariMu660-macOS.pkg"
end
