# cvaim: אותיות בצבעים #

This repository consists of:

* A LaTeX template for colourising [abjad](http://en.wikipedia.org/wiki/Abjad) (mainly [Hebrew](http://en.wikipedia.org/wiki/Hebrew_alphabet) and [Arabic](http://en.wikipedia.org/wiki/Arabic_alphabet)) vocalisation.
* A fanzine using this method, with a variety of coloured Hebrew texts.

It allows colourising each letter with one colour from a colour scheme ([Molokai](https://github.com/tomasr/molokai), [Solarized](https://github.com/altercation/solarized), [Invisibone](https://github.com/baskerville/invisibone) and others). It is quite simple and straight forward, and allows one to control the saturation easily.



## Why is it needed? ##

Abjad alphabets provide only a partial information about how to read a written text. For example, consider the first line of `jakinton.tex`: לילה־לילה מסתכלת הלבנה. It can be [transliterated](http://en.wikipedia.org/wiki/Transliteration) as *ljlh-ljlh mstklt hlbnh*, recording mostly the consonants, but in [transcription](http://en.wikipedia.org/wiki/Transcription) it is *lájla-lájla mistakélet ha levana*. When one reads a Hebrew or Arabic text without vocalic diacritics ([nikud](http://en.wikipedia.org/wiki/Niqqud) or [ḥarakāt](http://en.wikipedia.org/wiki/Harakat)), which is the most common case, xe has to constantly fill in the vowels (דרך *drk*, for example, can mean either *darax* ‘he stepped on’ or *dérex* ‘a way’). When learning to read, either when learning the language as a second language or when a child learns to read in xyr own language, this makes the process difficult.

This is where `cvaim` comes in: it provides a midway between vocalisation diacritics (which in the case of Hebrew are extremely anachronistic) and a regular text — each vowel has a special colour, and one can control the saturation gradually, according to the progress of the learning progress, from fully saturated colours (easiest) to monochrome text which is identical to the normal, not coloured text (most difficult).

I made `cvaim` in order to help my (then) 4½ y.o. child [Ilil](https://github.com/ilil) to learn reading.



## Examples ##

From `dinozaurim.tex` (an abbreviated version of the [article about dinosaurs](http://he.wikipedia.org/wiki/%D7%93%D7%99%D7%A0%D7%95%D7%96%D7%90%D7%95%D7%A8) in the Hebrew Wikipedia) with Invisibone:

![The beginning of the article about dinosaurs in the Hebrew Wikipedia, with colourisation](dinozaurim-excerpt.png)

From `jakinton.tex` (*Pizmon la Jakinton*, a lullaby by [Lea Goldberg](http://en.wikipedia.org/wiki/Lea_Goldberg)) with Molokai:

![The beginning of ‘Pizmon la Jakinton’, with colourisation](jakinton-excerpt.png)
