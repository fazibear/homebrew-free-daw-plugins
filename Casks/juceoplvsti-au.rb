cask "juceoplvsti-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/JuceOPLVSTi_MacAU.zip"
  name "JuceOPLVSTi"
  desc "JuceOPLVSTi is a FM synth using a Yamaha OPL sound chip emulation."
  homepage "https://plugins4free.com/plugin/2696"
  depends_on :macos
  artifact "JuceOPLVSTi.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/JuceOPLVSTi.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/JuceOPLVSTi.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/JuceOPLVSTi.component"]
  end
end
