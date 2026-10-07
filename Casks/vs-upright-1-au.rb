cask "vs-upright-1-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSUpright_AU_v1.zip"
  name "VS Upright 1"
  desc "VS Upright 1 is a clean sampling of an upright piano , the standard of homes, small clubs and studios around the world."
  homepage "https://plugins4free.com/plugin/1890"
  depends_on :macos
  artifact "VSUpright_v1_AU.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSUpright_v1_AU.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSUpright_v1_AU.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSUpright_v1_AU.component"]
  end
end
