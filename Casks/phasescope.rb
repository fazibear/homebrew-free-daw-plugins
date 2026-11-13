cask "phasescope" do
  version "1.0.0"
  sha256 "582c64a93cbf2cb634a1a81676add5ba1f6c2655c8bdd34983cfe51555327071"
  url "https://github.com/notpumbaa/PhaseScope/releases/download/v1.0.0/PhaseScope-macOS-AU.zip"
  name "PhaseScope"
  desc "Free audio plugin"
  homepage "https://github.com/notpumbaa/PhaseScope"
  depends_on :macos
  artifact "PhaseScope-macOS-AU/PhaseScope.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/PhaseScope.component"
end
