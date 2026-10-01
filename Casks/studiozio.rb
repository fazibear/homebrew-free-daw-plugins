cask "studiozio" do
  version "everything-v1.0.3"
  sha256 "71b1f432463cc3659d2e810c7300282ac17b391cfd265c8eb461f80af08a1436"
  url "https://github.com/StudioZIO/StudioZIO-Releases/releases/download/everything-v1.0.3/StudioZIO-Everything-1.0.3.pkg"
  name "StudioZIO-Releases"
  desc "Free audio plugin"
  homepage "https://github.com/StudioZIO/StudioZIO-Releases"
  depends_on :macos
  pkg "StudioZIO-Everything-1.0.3.pkg"
end
