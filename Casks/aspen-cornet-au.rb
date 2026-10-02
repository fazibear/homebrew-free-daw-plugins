cask "aspen-cornet-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Aspen-Cornet_component.zip"
  name "Aspen Cornet"
  desc "Aspen Cornet ."
  homepage "https://plugins4free.com/plugin/3319"
  depends_on :macos
  artifact "Aspen Cornet.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Cornet.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Cornet.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Cornet.component"]
  end
end
