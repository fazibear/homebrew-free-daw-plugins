cask "promptslice" do
  version "0.1.0"
  sha256 "036dc78ab1184b91615e6df2e4efde16706df1f4ca877042d01c9cbe63730fb7"
  url "https://github.com/vasylNaumenko/promptslice/releases/download/v0.1.0/PromptSlice-v0.1.0-macOS.zip"
  name "promptslice"
  desc "Free audio plugin"
  homepage "https://github.com/vasylNaumenko/promptslice"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "PromptSlice/PromptSlice.component", "{{user}}/Library/Audio/Plug-Ins/Components/PromptSlice.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "PromptSlice/PromptSlice.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/PromptSlice.vst3"
    mkdir_p "{{user}}/Applications"
    copy "PromptSlice/PromptSlice.app", "{{user}}/Applications/PromptSlice.app"
  end
end
