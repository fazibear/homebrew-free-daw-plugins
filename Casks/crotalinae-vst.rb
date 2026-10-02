cask "crotalinae-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Crotalinae_MacVST.zip"
  name "Crotalinae"
  desc "Crotalinae is a sampled crotales (antique chromatic cymbals remake)."
  homepage "https://plugins4free.com/plugin/2155"
  depends_on :macos
  artifact "Crotalinae.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Crotalinae.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Crotalinae.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Crotalinae.vst"]
  end
end
