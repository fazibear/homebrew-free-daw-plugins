cask "disflux" do
  version "1.2.0"
  sha256 "69d883ca5f568576a9308ce4ede7ff4471ce111ddd5c47cb261d2eec80030ad4"
  url "https://github.com/Dimethoxy/Disflux/releases/download/v1.2.0/disflux-v1.2.0-macos.pkg"
  name "Disflux"
  desc "Free audio plugin"
  homepage "https://github.com/Dimethoxy/Disflux"
  depends_on :macos
  pkg "disflux-v1.2.0-macos.pkg"
end
