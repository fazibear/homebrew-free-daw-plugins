cask "synsonics-v-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Synsonics-V.component.zip"
  name "Synsonics-V"
  desc "Synsonics-V is a 1981's analog drum pad emulation."
  homepage "https://plugins4free.com/plugin/3163"
  depends_on :macos
  artifact "Synsonics-V.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Synsonics-V.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Synsonics-V.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Synsonics-V.component"]
  end
end
