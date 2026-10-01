cask "gabcis-masterclear" do
  version "0.1.0"
  sha256 "011af37c2d8e22e2f74d59c36e06c52b722570ee375d8f507a6e58e2a8959ea5"
  url "https://github.com/rcptr2/gabcis-masterclear/releases/download/v0.1.0/MasterClear-v0.1.0-macOS-Intel-VST3.zip"
  name "gabcis-masterclear"
  desc "Free audio plugin"
  homepage "https://github.com/rcptr2/gabcis-masterclear"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "MasterClear.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/MasterClear.vst3", recursive: true
  end
end
