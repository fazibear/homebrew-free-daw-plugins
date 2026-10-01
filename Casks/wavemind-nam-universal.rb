cask "wavemind-nam-universal" do
  version "1.0.1.1"
  sha256 "3c4b0eff95cc57dc799d4ee0322681b7f4217952166dcd60a5c52d737137582e"
  url "https://wavemind.net/installers/namu-amplifier-suite/mac/NAM%20Universal.pkg"
  name "NAM Universal"
  desc "Neural amp model loader by WaveMind"
  homepage "https://wavemind.net/software"
  depends_on :macos
  pkg "NAM Universal.pkg"
end
