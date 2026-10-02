cask "awesome-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Awesome-Piano_MacVST.zip"
  name "Awesome Piano"
  desc "Awesome Piano is a sample based dissonant piano ."
  homepage "https://plugins4free.com/plugin/2927"
  depends_on :macos
  artifact "Awesome Piano (Mac)/Awesome Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Awesome Piano.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Awesome Piano.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Awesome Piano.vst"]
  end
end
