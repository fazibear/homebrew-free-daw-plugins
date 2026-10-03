cask "city-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/City_Piano.vst.zip"
  name "City Piano"
  desc "City Piano is a Baldwin Baby Grand Piano sampled upon 4 velocity layers."
  homepage "https://plugins4free.com/plugin/2293"
  depends_on :macos
  artifact "City Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/City Piano.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/City Piano.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/City Piano.vst"]
  end
end
