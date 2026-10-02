cask "img2sample" do
  version "0.1.1"
  sha256 "88f18ed3657efad0122e8b6e1e5e4ab798a9662251d3ad87c5d26b958a25209b"
  url "https://github.com/annsts/img2sample/releases/download/v0.1.1/img2sample-0.1.1.pkg"
  name "img2sample"
  desc "Free audio plugin"
  homepage "https://github.com/annsts/img2sample"
  depends_on :macos
  pkg "img2sample-0.1.1.pkg"
end
