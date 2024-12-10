function mono = stereo_to_mono(stereo)
  % mono = stereo;
  [n ~] = size(stereo);
  for i = 1 : n
    mono(i) = mean(stereo(i, :));
  endfor
  % Normalize
  mono = mono / max(abs(mono));
  mono = mono';
endfunction