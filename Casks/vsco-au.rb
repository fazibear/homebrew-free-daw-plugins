cask "vsco-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO_AU_v1.zip"
  name "VSCO"
  desc "The Versilian Studios Chamber Orchestra is a small selection of standard orchestral and wind ensemble sampled instruments."
  homepage "https://plugins4free.com/plugin/1891"
  depends_on :macos
  artifact "VSCO_AU_v1", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
