cask "hy-slicer2-free-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/HY-Slicer2_free.pkg.zip"
  name "HY-Slicer2 free"
  desc "HY-Slicer2 free is a sampler /slicer type plugin."
  homepage "https://plugins4free.com/plugin/3943"
  depends_on :macos
  artifact "HY-Slicer2_free.pkg", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
