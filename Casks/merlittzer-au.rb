cask "merlittzer-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MK_Merlittzer.component.zip"
  name "Merlittzer"
  desc "Musyng Kite Merlittzer is a sampled Wurlitzer electric piano ."
  homepage "https://plugins4free.com/plugin/2322"
  depends_on :macos
  artifact "MK Merlittzer.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/MK Merlittzer.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/MK Merlittzer.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/MK Merlittzer.component"]
  end
end
