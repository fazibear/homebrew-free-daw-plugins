cask "sonatina-viola-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Viola.component.zip"
  name "Sonatina Viola"
  desc "Sonatina Viola is a sampled viola ."
  homepage "https://plugins4free.com/plugin/2298"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Sonatina Viola.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sonatina Viola.component"
  end
end
