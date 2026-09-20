cask "mf-concert-guitar-classical-guitar-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/MF_Concert_Guitar.component.zip"
  name "MF Concert Guitar Classical guitar"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2317"
  depends_on :macos
  artifact "MF_Concert_Guitar.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
