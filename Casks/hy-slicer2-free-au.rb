cask "hy-slicer2-free-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/HY-Slicer2_free.pkg.zip"
  name "HY-Slicer2 free"
  desc "HY-Slicer2 free is a sampler /slicer type plugin."
  homepage "https://plugins4free.com/plugin/3943"
  depends_on :macos
  pkg "HY-Slicer2 free.pkg"
end
