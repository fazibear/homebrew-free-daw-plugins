cask "spectrablade" do
  version "0.15.3"
  sha256 "c641f87a9f125c21d70b08808bcb619a4fb6f0436c839fdd40c2a468cfafbca2"
  url "https://github.com/BobClawblaw/spectrablade/releases/download/v0.15.3/SpectraBlade-0.15.3.dmg"
  name "spectrablade"
  desc "Free audio plugin"
  homepage "https://github.com/BobClawblaw/spectrablade"
  depends_on :macos
  container type: :dmg
  app "SpectraBlade.app"
end
