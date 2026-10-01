cask "pakku" do
  version "1.0.0"
  sha256 "2c20de771bbe4120e60b41498eb147253b966125865a6011eaa688806d5d939a"
  url "https://github.com/danielalves96/pakku-vst/releases/download/v1.0.0/Pakku-1.0.0-macOS.zip"
  name "pakku"
  desc "Free audio plugin"
  homepage "https://github.com/danielalves96/pakku-vst"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "Pakku-1.0.0-macOS.zip.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Pakku-1.0.0-macOS.zip.vst3", recursive: true
    system_command "installer", args: ["-pkg", "#staged_path/#Pakku-1.0.0.pkg", "-target", "/"]
  end
end
