cask "punch2pen" do
  version "1.0.4"
  sha256 "79060da50e6c9b42bc2aee7a0b8aefb1dd45daa52887ad20a8d48f0f9c04fbb1"
  url "https://github.com/keeganmoody33/punch2pen/releases/download/v1.0.4/Punch2Pen-1.0.4-macOS-unsigned.pkg"
  name "punch2pen"
  desc "Free audio plugin"
  homepage "https://github.com/keeganmoody33/punch2pen"
  depends_on :macos
  pkg "Punch2Pen-1.0.4-macOS-unsigned.pkg"
end
