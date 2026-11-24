cask "kirin-hypha" do
  version "1.1.59"
  sha256 "d44b9160b9de2526ccea155dc227864d303240347604dea4f90fe621134e8a02"
  url "https://github.com/heyalohaloha/kirin_hypha/releases/download/v1.1.59/Kirin-Hypha-1.1.59-macOS-Universal.pkg"
  name "kirin_hypha"
  desc "Free audio plugin"
  homepage "https://github.com/heyalohaloha/kirin_hypha"
  depends_on :macos
  pkg "Kirin-Hypha-1.1.59-macOS-Universal.pkg"
end
