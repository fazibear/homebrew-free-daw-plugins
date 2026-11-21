cask "kirin-hypha" do
  version "1.1.58"
  sha256 "7b6bc7541f785d802321986977b73f9e1ca6e68449896609f358057f01dba690"
  url "https://github.com/heyalohaloha/kirin_hypha/releases/download/v1.1.58/Kirin-Hypha-1.1.58-macOS-Universal.pkg"
  name "kirin_hypha"
  desc "Free audio plugin"
  homepage "https://github.com/heyalohaloha/kirin_hypha"
  depends_on :macos
  pkg "Kirin-Hypha-1.1.58-macOS-Universal.pkg"
end
