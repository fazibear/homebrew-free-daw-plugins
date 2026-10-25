cask "kirin-hypha" do
  version "1.1.53"
  sha256 "d5356dc2d913c7abc8110c2a4661774597c99c60d0c37eea9a709d6ad13f9398"
  url "https://github.com/heyalohaloha/kirin_hypha/releases/download/v1.1.53/Kirin-Hypha-1.1.53-macOS-Universal.pkg"
  name "kirin_hypha"
  desc "Free audio plugin"
  homepage "https://github.com/heyalohaloha/kirin_hypha"
  depends_on :macos
  pkg "Kirin-Hypha-1.1.53-macOS-Universal.pkg"
end
