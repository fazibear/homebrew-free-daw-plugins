cask "sweetcase-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sweetcase_EP_macOS_Installer.zip"
  name "Sweetcase"
  desc "Sweetcase is an electric piano rompler."
  homepage "https://plugins4free.com/plugin/3252"
  depends_on :macos
  pkg "Sweetcase_EP_macOS_Installer_v1.3.2.pkg"
end
