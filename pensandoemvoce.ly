#(set-default-paper-size "letter")
acordes = \chordmode {
g2 es:maj7.11+/g g es:maj7.11+/g
e:m9 a:9 e:m9 a:9 a:m11 d:7.9-
g es:maj7.11+/g g4
}
melodia =   \relative c' { \key g\major
b'4~ b16 d,16 d d es8 g16 a~ a g8 b16~
b4 r8 d, es8 g16 a~ a g8 b16~ \break
b4 r8 fis e8 fis16 g~ g a8 b16~
b4 r16 fis fis fis e8 fis16 g~ g a8 b16~ \break
b4 r16 g g g es8 fis16 g~g a8 b16~ 
b4 r16 d,16 d d es8 g16 a~ a g8 b16~
b4
  }
letra = \lyricmode {
Eu, es -- tou pen -- san -- do em vo -- cê __
pen -- san -- do~em nun -- ca mais __
pen -- sar em te~es que cer __
pois quan -- do pen -- so em vo -- cê __
é quan -- do não me sin -- to só __

Com mi -- nhas le -- tras e can -- ções
}
\header {
  title = "Pensando em Você"
  composer = "Paulinho Moska"
}

\score {
 <<
 \new ChordNames {\acordes}
 \new Voice = "mel" {\melodia}
 \new Lyrics \lyricsto "mel" { \letra }
 >>

  \layout {
  indent = 1\cm
  }
  \midi {}
}