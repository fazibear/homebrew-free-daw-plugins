cask "aspen-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Aspen-Trombone_component.zip"
  name "Aspen Trombone"
  desc "Aspen Trombone ."
  homepage "https://plugins4free.com/plugin/3320"
  depends_on :macos
  artifact "Aspen Trombone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Trombone.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Trombone.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Trombone.component"]
  end
end
