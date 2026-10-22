cask "kirin-hypha" do
  version "1.1.52"
  sha256 "da7537021bcfbf0ab0dd58e472ac8e2adbe627045dde2304fc73ae760ce1627e"
  url "https://github.com/heyalohaloha/kirin_hypha/releases/download/v1.1.52/Kirin-Hypha-1.1.52-macOS-Universal.pkg"
  name "kirin_hypha"
  desc "Free audio plugin"
  homepage "https://github.com/heyalohaloha/kirin_hypha"
  depends_on :macos
  pkg "Kirin-Hypha-1.1.52-macOS-Universal.pkg"
end
