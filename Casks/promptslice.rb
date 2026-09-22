cask "promptslice" do
  version "0.1.0"
  sha256 "036dc78ab1184b91615e6df2e4efde16706df1f4ca877042d01c9cbe63730fb7"
  url "https://github.com/vasylNaumenko/promptslice/releases/download/v0.1.0/PromptSlice-v0.1.0-macOS.zip"
  name "promptslice"
  desc "Free audio plugin"
  homepage "https://github.com/vasylNaumenko/promptslice"
  depends_on :macos
  artifact "PromptSlice/PromptSlice.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
