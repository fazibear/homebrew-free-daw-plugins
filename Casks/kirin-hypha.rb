cask "kirin-hypha" do
  version "1.1.55"
  sha256 "aa58b7cf68d24c6197aa05850caaabc0a603d40f4e846fb7026d4eed6cb40e20"
  url "https://github.com/heyalohaloha/kirin_hypha/releases/download/v1.1.55/Kirin-Hypha-1.1.55-macOS-Universal.pkg"
  name "kirin_hypha"
  desc "Free audio plugin"
  homepage "https://github.com/heyalohaloha/kirin_hypha"
  depends_on :macos
  pkg "Kirin-Hypha-1.1.55-macOS-Universal.pkg"
end
