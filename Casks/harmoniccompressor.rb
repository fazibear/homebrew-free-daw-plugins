cask "harmoniccompressor" do
  version "1.5.3"
  sha256 "71c24cf3e0a10f4c04a20298af0ca3faa3a19f740de8fb9407c94fb97cf925cd"
  url "https://github.com/MistaMin/HarmonicCompressor/releases/download/v1.5.3/Harmonic-Compressor-1.5.3-macos.pkg"
  name "HarmonicCompressor"
  desc "Free audio plugin"
  homepage "https://github.com/MistaMin/HarmonicCompressor"
  depends_on :macos
  pkg "Harmonic-Compressor-1.5.3-macos.pkg"
end
