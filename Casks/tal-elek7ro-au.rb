cask "tal-elek7ro-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TAL-Elek7ro-II.component.zip"
  name "TAL-Elek7ro"
  desc "TAL-Elek7ro is a virtual analog synth with some special features like oscillator hardsync and frequncy modulation."
  homepage "https://plugins4free.com/plugin/600"
  depends_on :macos
  artifact "TAL-Elek7ro-II.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-Elek7ro-II.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-Elek7ro-II.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-Elek7ro-II.component"]
  end
end
