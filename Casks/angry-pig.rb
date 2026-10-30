cask "angry-pig" do
  version "1.1.1"
  sha256 "7dd5a1938f5b9b5430e2fd297ee7da242b27db01fc995ca28171459575ccf30e"
  url "https://github.com/Rafthouse/angry-pig/releases/download/v1.1.1/AngryPig-1.1.1-macOS.pkg"
  name "angry-pig"
  desc "Free audio plugin"
  homepage "https://github.com/Rafthouse/angry-pig"
  depends_on :macos
  pkg "AngryPig-1.1.1-macOS.pkg"
end
