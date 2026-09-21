cask "dpinga-congas-conga-set-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DPinga_Congas_MacAU.zip"
  name "DPinga Congas Conga set"
  desc "DPinga Congas Conga set"
  homepage "https://plugins4free.com/plugin/2825"
  depends_on :macos
  artifact "DPinga_Congas_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
