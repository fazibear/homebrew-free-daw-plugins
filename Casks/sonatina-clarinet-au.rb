cask "sonatina-clarinet-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Clarinet.component.zip"
  name "Sonatina Clarinet"
  desc "Sonatina Clarinet is a sampled clarinet ."
  homepage "https://plugins4free.com/plugin/2311"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Clarinet.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Clarinet.component"
  end
end
