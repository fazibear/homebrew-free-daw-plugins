cask "abctrain" do
  version "2.0.1"
  sha256 "9c7773ac6fa49b68e53983bb4ed774207e3b62144cfdf0dcf432292daf529034"
  url "https://github.com/bogggare567/abcTrain/releases/download/v2.0.1/abcTrain-macOS-2.0.1.dmg"
  name "abcTrain"
  desc "Free audio plugin"
  homepage "https://github.com/bogggare567/abcTrain"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "abcTrain-macOS-2.0.1.dmg.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/abcTrain-macOS-2.0.1.dmg.vst3", recursive: true
    system_command "installer", args: ["-pkg", "#staged_path/#abcTrain-2.0.1.pkg", "-target", "/"]
  end
end
