cask "swampdrain" do
  version "0.9.0"
  sha256 "78bdc3ccf50cf13b9458bb4b566f541c0b00e266b18a7ad24f301dc9ea3c1c44"

  url "https://github.com/fazibear/swampdrain.fazibear.me/releases/download/#{version}/swampdrain-macos.pkg"
  name "SwampDrain"
  desc "Audio plugin"
  homepage "https://swampdrain.fazibear.me"

  depends_on :macos

  pkg "swampdrain-macos.pkg"

  postflight_steps do
    run "/bin/echo", args: ["Removing macOS quarantine attributes from SwampDrain..."], print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST3/swampdrain.vst3",
                                 "/Library/Audio/Plug-Ins/Components/swampdrain.component"], sudo: true
  end
end
