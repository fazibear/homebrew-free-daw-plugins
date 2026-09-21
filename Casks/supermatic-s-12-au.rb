cask "supermatic-s-12-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Supermatic-S12_MacAU.zip"
  name "Supermatic S-12"
  desc "Supermatic S-12 is a vintage analog drum machine ."
  homepage "https://plugins4free.com/plugin/3651"
  depends_on :macos
  artifact "Supermatic S12 (Mac AU)/Supermatic S12.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
