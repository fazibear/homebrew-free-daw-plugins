cask "six-traq-aax" do
  version "latest"
  sha256 :no_check
  url "https://www.fullbucket.de/music/dl.php?file=sixtraq_1_0_4_macaax"
  name "Six-Traq"
  desc "New FREE Emulation of a beloved analog synth from 1984 Howdy folks – happy to announce the release of Essential Six, a faithful emulation of the quirky, but exceptional Six Trak by Sequential Circuits. This thing was known for incredibly rich sounds (bass in particular) thanks to its stackable six-voice architecture. Essential Six lets you play with custom sounds built on the original instrument with all the convenience of modern digital workflows. This video provides a walkthrough of the instrument: https://youtu.be/ADxDqtsY2Hg?si=9-NhmWEby8P7EGnp You can download the free version on Pianobook: https://www.pianobook.co.uk/packs/essential-six-analog-synth/ Or alternatively No samples, minimal space on your drive: https://www.fullbucket.de/music/sixtraq.html"
  homepage "https://www.fullbucket.de/music/sixtraq.html"
  depends_on :macos
  pkg "sixtraq_1_0_4_macaax.pkg"
end
