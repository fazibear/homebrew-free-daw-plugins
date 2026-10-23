cask "city-piano-crisp-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/City-Piano-Crisp_MacVST.zip"
  name "City Piano Crisp"
  desc "City Piano Crisp is a Baldwin Baby Grand Piano sampled upon 4 velocity layers."
  homepage "https://plugins4free.com/plugin/3572"
  depends_on :macos
  artifact "City Piano Crisp.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/City Piano Crisp.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/City Piano Crisp.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/City Piano Crisp.vst"]
  end
end
