cask "montagem-finisher" do
  version "0.3.0-beta"
  sha256 "a03ff056a72c55f90c53a3a5351fbc275d89a2257f5539a747629912cbd57caf"
  url "https://github.com/nabsei/montagem-finisher/releases/download/v0.3.0-beta/MontagemFinisher_Beta_Mac.zip"
  name "montagem-finisher"
  desc "Free audio plugin"
  homepage "https://github.com/nabsei/montagem-finisher"
  depends_on :macos
  artifact "MontagemFinisher_Beta_Mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end
