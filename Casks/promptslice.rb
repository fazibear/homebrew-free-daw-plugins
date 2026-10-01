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
    copy "PromptSlice/PromptSlice.component", "{{user}}/Library/Audio/Plug-Ins/Components/PromptSlice.component", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "PromptSlice/PromptSlice.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/PromptSlice.vst3", recursive: true
    mkdir_p "{{user}}/Applications"
    copy "PromptSlice/PromptSlice.app", "{{user}}/Applications/PromptSlice.app", recursive: true
  end
end
