cask "salamander-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Salamander_Piano.component.zip"
  name "Salamander Piano"
  desc "Salamander Piano is a sampled Yamaha C5 Grand Piano ."
  homepage "https://plugins4free.com/plugin/2564"
  depends_on :macos
  artifact "Salamander Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Salamander Piano.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Salamander Piano.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Salamander Piano.component"]
  end
end
