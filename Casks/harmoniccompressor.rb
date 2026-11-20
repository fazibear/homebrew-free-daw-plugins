cask "harmoniccompressor" do
  version "1.5.2"
  sha256 "2434ac8cfc2decd15b43cb6c85795c2ae76c66a9f7be60bd64e483e9aafd6a2d"
  url "https://github.com/MistaMin/HarmonicCompressor/releases/download/v1.5.2/Harmonic-Compressor-1.5.2-macos.pkg"
  name "HarmonicCompressor"
  desc "Free audio plugin"
  homepage "https://github.com/MistaMin/HarmonicCompressor"
  depends_on :macos
  pkg "Harmonic-Compressor-1.5.2-macos.pkg"
end
