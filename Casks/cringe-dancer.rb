cask "cringe-dancer" do
  version "1.0.0"
  sha256 "88d81ee77d4680608f1b671785460543fc04e19638b289f44cd8c86aa926adc2"
  url "https://github.com/alexlarichev/cringe-dancer-releases/releases/download/v1.0.0/CringeDancer-1.0.0-mac.dmg"
  name "cringe-dancer-releases"
  desc "Free audio plugin"
  homepage "https://github.com/alexlarichev/cringe-dancer-releases"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "CringeDancer-1.0.0-mac.dmg.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/CringeDancer-1.0.0-mac.dmg.vst3", recursive: true
    system_command "installer", args: ["-pkg", "#staged_path/#Install Cringe Dancer.pkg", "-target", "/"]
  end
end
