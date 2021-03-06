#
# Makefile
# Shlomi Fish, 2019-10-28 16:55
#

OUTBASE := Shaikeh-Ophir--The-English-Teacher--With-English-Intro

all: opening-cut.wav shaike-cut.wav $(OUTBASE).wav $(OUTBASE).mp3 $(OUTBASE).flac small.webp

opening-cut.wav: simcop2387--english-intro.flac
	sox $< $@ trim	39.476 =54.32

shaike-cut.wav: 05-Hamoreh-Leanglit.mp3
	sox $< $@ trim 19.841

INPUTFILES = opening-cut.wav shaike-cut.wav

$(OUTBASE).wav: $(INPUTFILES)
	sox $(INPUTFILES) $@

$(OUTBASE).flac: $(OUTBASE).wav
	sox $< $@

$(OUTBASE).mp3: $(OUTBASE).wav
	sox $< $@

small.webp: 492280182_b32752c4a4_o.webp
	gm convert -resize 800x600 $< $@

# vim:ft=make
#
