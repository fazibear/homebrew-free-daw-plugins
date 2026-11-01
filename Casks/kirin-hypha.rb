cask "kirin-hypha" do
  version "1.1.54"
  sha256 "b5875c4819f2e2db5d45b77d2dfe5076f9c38bf422518b6c3b79516678264ad2"
  url "https://github.com/heyalohaloha/kirin_hypha/releases/download/v1.1.54/Kirin-Hypha-1.1.54-macOS-Universal.pkg"
  name "kirin_hypha"
  desc "Free audio plugin"
  homepage "https://github.com/heyalohaloha/kirin_hypha"
  depends_on :macos
  pkg "Kirin-Hypha-1.1.54-macOS-Universal.pkg"
end
