cask "vsco2-clarinet-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Clarinet_V2.vst.zip"
  name "VSCO2 Clarinet"
  desc "VSCO2 Clarinet is a sampled clarinet ."
  homepage "https://plugins4free.com/plugin/2720"
  depends_on :macos
  artifact "VSCO2 Clarinet.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Clarinet.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Clarinet.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/VSCO2 Clarinet.vst"]
  end
end
