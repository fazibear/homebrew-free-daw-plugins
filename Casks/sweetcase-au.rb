cask "sweetcase-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sweetcase_EP_macOS_Installer.zip"
  name "Sweetcase"
  desc "Sweetcase is an electric piano rompler."
  homepage "https://plugins4free.com/plugin/3252"
  depends_on :macos
  artifact "Sweetcase_EP_macOS_Installer", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
