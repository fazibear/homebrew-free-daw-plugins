cask "upmixer" do
  version "1.0.0"
  sha256 "203546bfe0eb19ae0b1261a8c72676e67c21d7f04ad1043b433d2d1abc123d5b"
  url "https://github.com/qutschwalze/Upmixer/releases/download/v1.0.0/Upmixer_Mac.zip"
  name "Upmixer"
  desc "Free audio plugin"
  homepage "https://github.com/qutschwalze/Upmixer"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Upmixer.component", "{{user}}/Library/Audio/Plug-Ins/Components/Upmixer.component", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "Upmixer.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Upmixer.vst3", recursive: true
  end
end
