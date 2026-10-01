cask "phantomic" do
  version "1.1.6"
  sha256 "29bdf0946e8fc0695c0d5f186a06b50163f9b91f9ddb07cb753b0610ce60a0a2"
  url "https://github.com/alexlarichev/phantomic-releases/releases/download/v1.1.6/Phantomic-mac.dmg"
  name "phantomic-releases"
  desc "Free audio plugin"
  homepage "https://github.com/alexlarichev/phantomic-releases"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "Phantomic-mac.dmg.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Phantomic-mac.dmg.vst3", recursive: true
    system_command "installer", args: ["-pkg", "#staged_path/#Install Phantomic.pkg", "-target", "/"]
  end
end
