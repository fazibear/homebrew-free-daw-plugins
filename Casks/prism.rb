cask "prism" do
  version :latest
  sha256 :no_check
  url "https://github.com/boof2015/prism/releases/latest/download/Prism-macOS.pkg"
  name "Prism"
  desc "Open-source audio analyzer and meter rack"
  homepage "https://github.com/boof2015/prism"
  depends_on :macos
  pkg "Prism-macOS.pkg"
end
