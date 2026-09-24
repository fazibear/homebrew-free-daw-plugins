cask "ami-sampler" do
  version "0.7.2"
  sha256 :no_check
  url "https://github.com/astriiddev/Ami-Sampler-VST/releases/download/v0.7.2/AmiSampler_macOS.pkg"
  name "Ami-Sampler"
  desc "Free audio plugin"
  homepage "https://github.com/astriiddev/Ami-Sampler-VST"
  depends_on :macos
  pkg "AmiSampler_macOS.pkg"
end
