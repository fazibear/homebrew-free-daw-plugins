cask "cheeze-machine-2-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/2getheraudio-Cheeze-Machine-2-Mac.zip"
  name "Cheeze Machine 2"
  desc "Cheeze Machine 2 is a vintage string machine ."
  homepage "https://plugins4free.com/plugin/2964"
  depends_on :macos
  pkg "2getheraudioCheezeMachine2.pkg"
end
