cask "kirin-hypha" do
  version "1.1.57"
  sha256 "d9f0ef066dae6eb7b810f8ce3f1dcb00966a44d17e706692560cb434f8672ae0"
  url "https://github.com/heyalohaloha/kirin_hypha/releases/download/v1.1.57/Kirin-Hypha-1.1.57-macOS-Universal.pkg"
  name "kirin_hypha"
  desc "Free audio plugin"
  homepage "https://github.com/heyalohaloha/kirin_hypha"
  depends_on :macos
  pkg "Kirin-Hypha-1.1.57-macOS-Universal.pkg"
end
