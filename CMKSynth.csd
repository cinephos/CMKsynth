<Cabbage>
form caption("CMK synth"), size(1045,470), colour( 50, 50, 50), pluginId("spec"), guiMode("queue")

#define FBOX tableGridColour(100,100,100,50) tableColour(0,0,200) outlineThickness(0)
#define HSL valueTextBox(1) colour(255,255,255) trackerColour(0,0,200)
#define VSL valueTextBox(1) colour(255,255,255) trackerColour(0,0,200)
#define RSL valueTextBox(1) colour(0,0,0,0) trackerColour(0,0,200) trackerInsideRadius(.6) fontColour(127, 127, 127)
#define BU corners(13) colour:0(0,0,0) colour:1(0, 0, 200) text("","")
#define BU1 corners(13) colour:0(0,0,0) colour:1(0, 0, 200) text("","") radioGroup("Osc1")
#define BU2 corners(13) colour:0(0,0,0) colour:1(0, 0, 200) text("","") radioGroup("Osc2")
#define BU3 corners(13) colour:0(0,0,0) colour:1(0, 0, 200) text("","") radioGroup("LFO")
#define BU4 corners(13) colour:0(0,0,0) colour:1(0, 0, 200) text("","") radioGroup("LFOUse")

image    bounds(5, 5, 375, 70) channel("mix") colour(0, 0, 0, 0)
{
groupbox bounds(  0,  0, 375, 70) text("Mix  OSC 1  &  OSC 2") colour(0, 0, 0, 0)
button   bounds(255, 29,  13,  13) channel("osc2onoff") value(0) $BU
label    bounds(275, 28, 100,  13) text("OSC 2 ON/OFF") align("left") 
button   bounds(255, 49,  13,  13) channel("sync") value(0) $BU
label    bounds(275, 48, 100,  13) text("OSC 2 SYNC") align("left") 
hslider  bounds(  5, 32, 245,  20) channel("mix12") text("mix 1/2") range(0,1,.5,1,.01) $HSL
}

image    bounds(  5, 80, 185, 160) channel("osc1") colour(0, 0, 0, 0)
{
groupbox bounds(  0,   0, 185, 160) text("OSC 1") colour(0, 0, 0, 0)
button   bounds( 10,  35,  13,  13) channel("sin1") value(1) $BU1 
label    bounds( 30,  34,  50,  13) text("Sin") align("left")
button   bounds( 10,  55,  13,  13) channel("saw1") value(0) $BU1
label    bounds( 30,  54,  50,  13) text("Saw") align("left")
button   bounds( 10,  75,  13,  13) channel("squ1") value(0) $BU1
label    bounds( 30,  74,  50,  13) text("Square") align("left")
button   bounds( 10,  95,  13,  13) channel("tri1") value(0) $BU1
label    bounds( 30,  94,  50,  13) text("Triangle") align("left")
button   bounds( 10, 115,  13,  13) channel("pw1") value(0) $BU1
label    bounds( 30, 114,  50,  13) text ("PW") align ("left")
hslider  bounds(  5, 135, 175,  20) channel("pwv1") text("PW") range(.01, .99, .5, 1, .01) $HSL
rslider  bounds( 95,  20,  90,  90) channel("cents1") text("cents") range(-3600, 3600, 0, 1, 1) $RSL
}

image    bounds(195, 80, 185, 160) channel("osc2") colour(0, 0, 0, 0)
{
groupbox bounds(  0,   0, 185, 160) text("OSC 2") colour(0, 0, 0, 0)
button   bounds( 10,  35,  13,  13) channel("sin2") value(1) $BU2
label    bounds( 30,  34,  50,  13) text("Sin") align("left")
button   bounds( 10,  55,  13,  13) channel("saw2") value(0) $BU2
label    bounds( 30,  54,  50,  13) text("Saw") align("left")
button   bounds( 10,  75,  13,  13) channel("squ2") value(0) $BU2
label    bounds( 30,  74,  50,  13) text("Square") align("left")
button   bounds( 10,  95,  13,  13) channel("tri2") value(0) $BU2
label    bounds( 30,  94,  50,  13) text("Triangle") align("left")
button   bounds( 10, 115,  13,  13) channel("pw2") value(0) $BU2
label    bounds( 30, 114,  50,  13) text ("PW") align ("left")
hslider  bounds(  5, 135, 175,  20) channel("pwv2") text("PW") range(.01, .99, .5, 1, .01) $HSL
rslider  bounds( 95,  20,  90,  90) channel("cents2") text("cents") range(-3600, 3600, 0, 1, 1) $RSL
}

image    bounds(385, 5, 100, 235) channel("noise") colour(0,0,0,0)
{
groupbox bounds(  0,   0, 100, 235) text("NOISE") colour(0,0,0,0)
button   bounds( 10,  35,  13,  13) channel("noiseonoff") value(0) $BU
label    bounds( 30,  34,  50,  13) text("ON/OFF") align("left")
rslider  bounds( 10,  47,  90,  90) channel("noisegain") text("Gain") range(0, 1, 0, 1, .01) $RSL
rslider  bounds( 10, 140,  90,  90) channel("beta") text("beta") range(-1, 1, 0, 1, .01) $RSL
}

image    bounds(490, 5, 185, 235) channel("lfo") colour(0, 0, 0, 0)
{
groupbox bounds(  0,   0, 185, 235) text("LFO") colour(0, 0, 0, 0)
button   bounds( 10,  35,  13,  13) channel("lfoonoff") value(0) $BU
label    bounds( 30,  34,  50,  13) text("ON/OFF") align("left")
rslider  bounds( 95,  30,  90,  90) channel("lfofreq") text("Frequency") range(0, 10, 7.5, 1, .01) $RSL
rslider  bounds( 95, 130,  90,  90) channel("lfoperc") text("Percentage") range(0, 100, 70, 1, .1) $RSL
button   bounds( 10,  55,  13,  13) channel("lfosin") value(1) $BU3
label    bounds( 30,  54,  50,  13) text("Sin") align("left")
button   bounds( 10,  75,  13,  13) channel("lfotriang") value(0) $BU3
label    bounds( 30,  74,  50,  13) text("Triangle") align("left")
button   bounds( 10,  95,  13,  13) channel("lfosqu") value(0) $BU3
label    bounds( 30,  94,  50,  13) text("Square") align("left")
label    bounds( 10, 114,  50,  13) text("LFO Use") align("left")
button   bounds( 10, 135,  13,  13) channel("lfoscfreq") value(0) $BU4
label    bounds( 30, 134,  80,  13) text("frequency") align("left")
button   bounds( 10, 155,  13,  13) channel("lfamp") value(1) $BU4
label    bounds( 30, 154,  80,  13) text("Amplitude") align("left")
button   bounds( 10, 175,  13,  13) channel("lfofilter") value(0) $BU4
label    bounds( 30, 174,  50,  13) text("Filter") align("left")
button   bounds( 10, 195,  13,  13) channel("lfopw") value(0) $BU4
label    bounds( 30, 194,  50,  13) text("PW") align("left")
}

image    bounds(680, 5, 360, 235) channel("lpf") colour(0, 0, 0, 0)
{
groupbox bounds(  0,   0, 360, 235) text("LPF") colour(0, 0, 0, 0)
button   bounds( 10,  35,  13,  13) channel("fonoff") value(0) $BU
label    bounds( 30,  34,  50,  13) text("ON/OFF") align("left")
rslider  bounds( 90,  30,  90,  90) channel("cutoff") text("Cut Off") range(20, 20000, 40, .5, .01) $RSL
rslider  bounds(180,  30,  90,  90) channel("resonance") text("Resonance") range(0, 1, 0, 1, .01) $RSL
rslider  bounds(270,  30,  90,  90) channel("amount") text("Amount") range(0.01, 1, 0.7, 1, .01) $RSL
rslider  bounds(  0, 130,  90,  90) channel("fatt") text("Attack") range(0.01, 1, .01, 1, .01) $RSL
rslider  bounds( 90, 130,  90,  90) channel("fdec") text("Decay") range(0, 4, .5, 1, .01) $RSL
rslider  bounds(180, 130,  90,  90) channel("fsus") text("Sustain") range(0, 1, .7, 1, .01) $RSL
rslider  bounds(270, 130,  90,  90) channel("frel") text("Release") range(0, 4, .1, 1, .01) $RSL
}

image    bounds(  5, 245, 375, 120) channel("presets") colour(0, 0, 0, 0)
{
groupbox bounds(  0,   0, 375, 120) text("Presets") colour(0, 0, 0, 0)
combobox bounds( 10,  30, 165, 25), populate("*.snaps")
filebutton bounds(180, 30, 90, 25), text("Save"), populate("*.snaps"), mode("named preset")
filebutton bounds(275, 30, 90, 25), text("Delete"), populate("*.snaps"), mode("remove preset")
}

image    bounds(590, 245, 450, 120) channel("ADSRselector") colour(0, 0, 0, 0)
{ 
groupbox bounds(  0,   0, 450, 120) text("A D S R  &  Gain") colour(0, 0, 0, 0)
rslider  bounds(  0,  20,  90,  90) channel("att") text("Attack") range(0.01, 1, .01, 1, .01) $RSL
rslider  bounds( 90,  20,  90,  90) channel("dec") text("Decay") range(0, 4, .5, 1, .01) $RSL
rslider  bounds(180,  20,  90,  90) channel("sus") text("Sustain") range(0, 1, .7, 1, .01) $RSL
rslider  bounds(270,  20,  90,  90) channel("rel") text("Release") range(0, 4, .1, 1, .01) $RSL
rslider  bounds(360,  20,  90,  90) channel("Gain") text("Audio Gain") range(0.01, 1, .7, 1, 0.01) $RSL
}

keyboard bounds(  100, 370, 845,  95) value(36)

</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 --midi-key-cps=4 --midi-velocity-amp=5 -odac
</CsOptions>
<CsInstruments>

ksmps = 32
nchnls = 2
0dbfs = 1

gisaw           ftgen       1, 0, 4097, 7, 1, 4096, -1
gisquare        ftgen       2, 0, 4097, 7, 1, 2048, 1, 0, -1, 2048, -1
gitriangle      ftgen       3, 0, 4097, 7, 0, 1024, 1, 2048, -1, 1024, 0


instr 1
 
 iAtt       chnget  "att"
 iDec       chnget  "dec"
 iSus       chnget  "sus"
 iRel       chnget  "rel"
 
 iosc1cents chnget  "cents1"
 iosc1freq  =       p4 * cent(iosc1cents)
 
 iosc2cents chnget  "cents2"
 iosc2freq  =       p4 * cent(iosc2cents)

 ifatt      chnget  "fatt"
 ifdec      chnget  "fdec"
 ifsus      chnget  "fsus"
 ifrel      chnget  "frel" 
 
 kosc1sin   chnget  "sin1"
 kosc1saw   chnget  "saw1"
 kosc1squ   chnget  "squ1"
 kosc1tri   chnget  "tri1"
 kosc1pw    chnget  "pw1"
 kosc1pwv   chnget  "pwv1"
 
 kosc2onoff chnget  "osc2onoff"
 ksync      chnget  "sync"
 kosc2sin   chnget  "sin2"
 kosc2saw   chnget  "saw2"
 kosc2squ   chnget  "squ2"
 kosc2tri   chnget  "tri2"
 kosc2pw    chnget  "pw2"
 kosc2pwv   chnget  "pwv2" 
  
 kmix12     chnget  "mix12"
 
 knonoff    chnget   "noiseonoff"
 knoisegain chnget  "noisegain"
 kbeta      chnget  "beta"
 
 klfoonoff  chnget  "lfoonoff" 
 klfofreq   chnget  "lfofreq"
 klfoperc   chnget  "lfoperc"
 klfosin    chnget  "lfosin"
 klfotriang chnget  "lfotriang"
 klfosqu    chnget  "lfosqu"
 klfoscfreq chnget  "lfoscfreq"
 klfamp     chnget  "lfamp"
 klfofilter chnget  "lfofilter"
 klfopw     chnget  "lfopw"
 
 kfonoff    chnget  "fonoff"
 kcutoff    chnget  "cutoff"
 kresonance chnget  "resonance"
 kamount    chnget  "amount"

 kporttime  linseg  0,0.01,0.05
 kAudioGain chnget  "Gain"
 kAudioGain portk   kAudioGain,kporttime
 
;- Region of PW tables 
 
 if kosc1pw==1 || kosc2pw==1 then
  kchanged  changed kosc1pwv, kosc2pwv
  if kchanged == 1 then
            reinit  reset
  endif
 endif 
  
 reset:
    ipw11   =       int(i(kosc1pwv) * 4096)
    ipw10   =       4096 - ipw11 
    ipwtab1 ftgen   21, 0, 4097, 7, 1, ipw11, 1, 0 , -1, ipw10, -1   
    ipw21   =       int(i(kosc2pwv) * 4096)
    ipw20   =       4096 - ipw21 
    ipwtab2 ftgen   22, 0, 4097, 7, 1, ipw21, 1, 0 , -1, ipw20, -1       
 rireturn    
  
;- Region: LFO as frequency

 if klfoonoff==1 && klfosin==1 then
  klfo      lfo     klfoperc, klfofreq
 elseif klfoonoff==1 && klfotriang==1 then
  klfo      lfo     klfoperc, klfofreq, 1
 elseif klfoonoff==1 && klfosqu==1 then
  klfo      lfo     klfoperc, klfofreq, 2
 else
  klfo      =       0
 endif

 if klfoonoff==1 && klfoscfreq==1 then
  kosc1freq = iosc1freq + klfo
  kosc2freq = iosc2freq + klfo
 else
  kosc1freq = iosc1freq
  kosc2freq = iosc2freq  
 endif 
  
;- Region: Oscillator 1

 aphase1, asyncout1  syncphasor  kosc1freq, a(0)  
 
 if kosc1sin==1 then
  aOsc1     tablei  aphase1, -1, 1
  aOsc1     *=      p5
 elseif kosc1saw==1 then
  aOsc1     tablei  aphase1, gisaw, 1
  aOsc1     *=      p5  
 elseif kosc1squ==1 then
  aOsc1     tablei  aphase1, gisquare, 1
  aOsc1     *=      p5 
 elseif kosc1tri==1 then
  aOsc1     tablei  aphase1, gitriangle, 1
  aOsc1     *=      p5 
 elseif kosc1pw==1 then
  aOsc1     tablei  aphase1, ipwtab1, 1
  aOsc1     *=      p5 
 endif 
 
;- Region: Oscillator 2

 if kosc2onoff==1 then
  if ksync==1 then 
   aphase2,asyncout2 syncphasor  kosc2freq, asyncout1
  else
   aphase2  phasor kosc2freq
  endif 
 
  if kosc1sin==1 then
   aOsc2    tablei  aphase2, -1, 1
   aOsc2    *=      p5
  elseif kosc1saw==1 then
   aOsc2    tablei  aphase2, gisaw, 1
   aOsc2    *=      p5  
  elseif kosc1squ==1 then
   aOsc2    tablei  aphase2, gisquare, 1
   aOsc2    *=      p5 
  elseif kosc1tri==1 then
   aOsc2    tablei  aphase2, gitriangle, 1
   aOsc2    *=      p5 
  elseif kosc1pw==1 then
   aOsc2    tablei  aphase2, ipwtab2, 1
   aOsc2    *=      p5 
  endif 
 else
  aOsc2     =       a(0)
 endif
 
;- Region: Noise

 if knonoff==1 then
  aNoise    noise   knoisegain, kbeta
 else
  aNoise    =       0
 endif 

;- Region: Mix osc1, osc2 and noise

 aMix12     ntrpol  aOsc1, aOsc2, kmix12
 atofilter  ntrpol  aMix12, aNoise, .5  

;- Region: Low Pass Filter
 
 if kfonoff==1 then      
  kfenv     madsr       ifatt, ifdec, ifsus, ifrel
  kmaxfreq  =           20000 * kamount
  if kmaxfreq<kcutoff then
   kmaxfreq =           kcutoff
  endif 
  kmlfreq   =           ((kmaxfreq - kcutoff) * kfenv) + kcutoff
  aSig      moogladder2 atofilter, kmlfreq, kresonance
 else
  aSig      =           atofilter 
 endif

;- Region: signal makeup 
 
 kEnv       madsr   iAtt, iDec, iSus, iRel
 
            chnset  aSig, "FFT"
            
 if klfoonoff==1 && klfamp==1 then
  klfo       =       klfo / 100
  kAudioGain =       kAudioGain * (1 + klfo)
 endif             
 
 aAudioGain interp  kAudioGain

            outs    aSig*aAudioGain*kEnv, aSig*aAudioGain*kEnv
endin

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
</CsScore>
</CsoundSynthesizer>
