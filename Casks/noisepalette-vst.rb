cask "noisepalette-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/sfxnoisepalette-mac.zip"
  name "NoisePalette"
  desc "NoisePalette is a versatile noise generator , capable of generating signals with variable power spectra using a high-quality spectral tilt filter."
  homepage "https://plugins4free.com/plugin/3801"
  depends_on :macos
  pkg "SFXNoisePalette-Mac.pkg"
end
