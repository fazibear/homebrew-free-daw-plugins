cask "best-trigger-3" do
  version "0.3.9"
  sha256 "618a3b339d7f0caa480054caaaf3b823e514ec60c2c8ef8de1a79ce958ed4080"
  url "https://github.com/SSM-AUDIO/Best-Trigger-3/releases/download/v0.3.9/BestTrigger3-0.3.9-macOS.pkg"
  name "Best-Trigger-3"
  desc "Free audio plugin"
  homepage "https://github.com/SSM-AUDIO/Best-Trigger-3"
  depends_on :macos
  pkg "BestTrigger3-0.3.9-macOS.pkg"
end
