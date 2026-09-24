cask "helm-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Helm.pkg"
  name "Helm"
  desc "Helm is a polyphonic semi-modular synthesizer with a flexible modulation system."
  homepage "https://plugins4free.com/plugin/3478"
  depends_on :macos
  pkg "Helm.pkg"
end
