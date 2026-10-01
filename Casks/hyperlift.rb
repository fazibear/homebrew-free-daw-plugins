cask "hyperlift" do
  version "1.1.1"
  sha256 "fb226fe69c1e78443e1841a3ed24db6e527ddf16e71ef77104c7a295857154bc"
  url "https://github.com/alexlarichev/hyperlift-releases/releases/download/v1.1.1/Hyperlift-mac.dmg"
  name "hyperlift-releases"
  desc "Free audio plugin"
  homepage "https://github.com/alexlarichev/hyperlift-releases"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "Hyperlift-mac.dmg.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Hyperlift-mac.dmg.vst3", recursive: true
    system_command "installer", args: ["-pkg", "#staged_path/#Install Hyperlift.pkg", "-target", "/"]
  end
end
