cask "studioeq" do
  version "1.1.2"
  sha256 "47d62d762075d37e0051f8cd47ffc6a567c6a014709afe34d0cba7b007ac605a"
  url "https://github.com/israelftci/StudioEQ/releases/download/v1.1.2/StudioEQ-FREE-1.1.2-macOS.pkg"
  name "StudioEQ"
  desc "Free audio plugin"
  homepage "https://github.com/israelftci/StudioEQ"
  depends_on :macos
  pkg "StudioEQ-FREE-1.1.2-macOS.pkg"
end
