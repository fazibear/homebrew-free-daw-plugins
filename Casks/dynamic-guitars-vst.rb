cask "dynamic-guitars-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DSK_Dynamic_Guitars-Mac_VST.zip"
  name "Dynamic Guitars"
  desc "Dynamic Guitars offers 3 high quality guitars (Acoustic, Steel & Nylon) , with great realism and dynamic response."
  homepage "https://plugins4free.com/plugin/2158"
  depends_on :macos
  artifact "DSK Dynamic Guitars.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/DSK Dynamic Guitars.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/DSK Dynamic Guitars.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/DSK Dynamic Guitars.vst"]
  end
end
