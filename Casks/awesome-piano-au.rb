cask "awesome-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Awesome-Piano_MacAU.zip"
  name "Awesome Piano"
  desc "Awesome Piano is a sample based dissonant piano ."
  homepage "https://plugins4free.com/plugin/2927"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Awesome Piano (Mac AU)/Awesome Piano.component", "{{user}}/Library/Audio/Plug-Ins/Components/Awesome Piano.component"
  end
end
