cask "kirin-hypha" do
  version "1.1.56"
  sha256 "92514fca3768025aad237485937a61dae66bd2b820f68244300f1a1c1eab2f7c"
  url "https://github.com/heyalohaloha/kirin_hypha/releases/download/v1.1.56/Kirin-Hypha-1.1.56-macOS-Universal.pkg"
  name "kirin_hypha"
  desc "Free audio plugin"
  homepage "https://github.com/heyalohaloha/kirin_hypha"
  depends_on :macos
  pkg "Kirin-Hypha-1.1.56-macOS-Universal.pkg"
end
