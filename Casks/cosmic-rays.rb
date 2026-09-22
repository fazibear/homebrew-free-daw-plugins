cask "cosmic-rays" do
  version "30.03.2026-1058"
  sha256 "909d6ad32242f9cf41e2781f91ab95eef84a99264f932dc5792cfffeec843a49"
  url "https://github.com/KhanTheDaleK1/cosmic-rays/releases/download/v30.03.2026-1058/CosmicRays-30.03.2026-1058-Darwin.pkg"
  name "cosmic-rays"
  desc "Free audio plugin"
  homepage "https://github.com/KhanTheDaleK1/cosmic-rays"
  depends_on :macos
  pkg "CosmicRays-30.03.2026-1058-Darwin.pkg"
end
