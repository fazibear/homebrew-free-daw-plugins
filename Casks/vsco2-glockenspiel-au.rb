cask "vsco2-glockenspiel-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Glockenspiel_V2.component.zip"
  name "VSCO2 Glockenspiel"
  desc "VSCO2 Glockenspiel is a sampled glockenspiel ."
  homepage "https://plugins4free.com/plugin/2722"
  depends_on :macos
  artifact "VSCO2 Glockenspiel.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Glockenspiel.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Glockenspiel.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Glockenspiel.component"]
  end
end
