cask "das-meter" do
  version "0.1.1"
  sha256 "8a3977cf35a7b6d52fbf2abb9bdd4c2f382db6d2904b1117e921a1bcd280806f"
  url "https://github.com/daswerk/Das-Meter/releases/download/v0.1.1/Das-Meter-0.1.1.dmg"
  name "Das-Meter"
  desc "Free audio plugin"
  homepage "https://github.com/daswerk/Das-Meter"
  depends_on :macos
  container type: :dmg
  app "Das-Meter.app"
end
