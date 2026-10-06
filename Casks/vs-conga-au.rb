cask "vs-conga-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VS-Conga_MacAU.zip"
  name "VS Conga"
  desc "VS Conga is a sampled Conga set."
  homepage "https://plugins4free.com/plugin/3757"
  depends_on :macos
  artifact "VS Conga.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VS Conga.component"
end
