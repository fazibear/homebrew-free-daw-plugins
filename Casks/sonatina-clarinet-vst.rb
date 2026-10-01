cask "sonatina-clarinet-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Clarinet.vst.zip"
  name "Sonatina Clarinet"
  desc "Sonatina Clarinet is a sampled clarinet ."
  homepage "https://plugins4free.com/plugin/2311"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Sonatina Clarinet.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Sonatina Clarinet.vst"
  end
end
