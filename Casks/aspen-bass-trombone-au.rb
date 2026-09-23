cask "aspen-bass-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Bass-Trombone_component.zip"
  name "Aspen Bass Trombone"
  desc "Aspen Bass Trombone ."
  homepage "https://plugins4free.com/plugin/3317"
  depends_on :macos
  artifact "Aspen Bass Trombone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
