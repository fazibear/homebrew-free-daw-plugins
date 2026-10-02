cask "bazz-murda-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DC_Bazz_Murda_MAC_VST.zip"
  name "Bazz Murda"
  desc "Bazz Murda Free is a bass/kick synthesizer ."
  homepage "https://plugins4free.com/plugin/2519"
  depends_on :macos
  artifact "DC_Bazz_Murda_v1_8_FREE_OSX_VST_32bit/Bazz_Murda_v1_8_FREE_32bit.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Bazz_Murda_v1_8_FREE_32bit.vst"
  artifact "DC_Bazz_Murda_v1_8_FREE_OSX_VST_64bit/Bazz_Murda_v1_8_FREE_64bit.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Bazz_Murda_v1_8_FREE_64bit.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Bazz_Murda_v1_8_FREE_32bit.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Bazz_Murda_v1_8_FREE_32bit.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Bazz_Murda_v1_8_FREE_64bit.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Bazz_Murda_v1_8_FREE_64bit.vst"]
  end
end
