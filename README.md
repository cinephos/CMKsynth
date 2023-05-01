# CMKsynth
### Subtractive synth à la Fred Welsh

This is a sutractive synth project according to instructions given by Fred Welsh in his book [Welsh's Synthesizer Cookbook](https://www.synthesizer-cookbook.com/).

This is a [Csound](https://csound.com/) project built with [Cabbage](https://cabbageaudio.com/) frontend IDE.

Still work in progress:
* LFO does not control PW (as the available buttons suggest). 
* No presets available (for the time being).

CMKsynth can be exported as a plugin using menu command: File --> Export plugin --> Export as VST Plugin Synth (or Export as VST3 Plugin Synth)

Remember to store the `csd` file together with the plugin file generated by Cabbage.

It has been tested on Windows and works within [FL Studio](https://www.image-line.com/) DAW.

It has been tested on Linux and works within [Qtractor](https://qtractor.org/) DAW.

The code (unfortunately) consumes 5 times as much CPU resources compared to other synths, therefore the code needs to be revised and improved.
