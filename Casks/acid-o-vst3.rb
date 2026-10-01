cask "acid-o-vst3" do
  version "latest"
  sha256 :no_check
  url "https://mha-download-counter.madhouseaudioacido.workers.dev/dl/ACID-O-macOS-VST3.zip"
  name "ACID-O"
  desc "ACID-O by Mad House Audio is a free TB-303-style acid bass synth. Expiry: None. https://madhouseaudio.com/plugins/acid-o/ Here you’ll find as well a free tape delay plugin with weight and wobble. PERC-O, free, in which you drop in a percussion loop. Get the MIDI, the kit, and the sound. And VERB-O, a free smart reverb plugin."
  homepage "https://madhouseaudio.com/plugins/acid-o/"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "ACID-O.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/ACID-O.vst3", recursive: true
  end
end
