cask "coherence" do
  version "0.6.2"
  sha256 "0fab7d869d4efe85a06be763fd7a3a35f6a960fca9b8ecd8eadfbf69ddabc17e"
  url "https://github.com/phase-systems/coherence/releases/download/v0.6.2/COHERENCE-0.6.2.pkg"
  name "coherence"
  desc "Free audio plugin"
  homepage "https://github.com/phase-systems/coherence"
  depends_on :macos
  pkg "COHERENCE-0.6.2.pkg"
end
