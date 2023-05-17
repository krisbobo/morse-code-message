def morse_to_character(morse)
  character = ''
  morse_hash = {
    a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.',
    f: '..-.', g: '--.', h: '....', i: '..', j: '.---',
    k: '-.-', l: '.-..', m: '--', n: '-.', o: '---',
    p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-',
    u: '..-', v: '...-', w: '.--', x: '-..-', y: '-.--', z: '--..'
  }
  morse_hash.each { |key, value| character = key.upcase.to_s if value == morse }
  character
end

def morse_to_word(phrase)
  word = ''
  phrase_array = phrase.split
  phrase_array.each { |section| word += morse_to_character(section) }
  word
end
