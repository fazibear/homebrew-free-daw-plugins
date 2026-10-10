cask "etherealwinds-harp-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/EtheralwindsHarp_Mac.zip"
  name "Etherealwinds Harp"
  desc "Etherealwinds Harp is a sampling of a diatonic folk harp recorded by the Newgrounds musician Etherealwinds."
  homepage "https://plugins4free.com/plugin/2167"
  depends_on :macos
  artifact "EtherealwindsHarp_AU_v1.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/EtherealwindsHarp_AU_v1.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/EtherealwindsHarp_AU_v1.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/EtherealwindsHarp_AU_v1.component"]
  end
end
