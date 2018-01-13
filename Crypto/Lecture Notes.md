# Caesar Shift

Exactly `Rot(x)` for some value of $x$.

Method of attack: just list possibilities, there are only 26 possible substitutions.

# Vigenere

Similar to Caesar, with the addition of a key. If the key is length $l$, you break up your message into $l$-grams, then in each block, for the $i$-th letter, use the caesar cipher corresponding to the $i$-th letter in the key.

By "corresponding", the meaning is that you choose the alphabetic rotation resulting from sending $A$ to that letter, or equivalent placing that letter first and listing of the rest of the alphabet cyclically after it.

# Rectangular Transposition

Pick a number of columns $c$, then pick some permutation of $[c]$. Then fit your message into a $c\times c$ grid, placing the permutation in cycle notation above the column. Finally, rearrange the columns so the cycle is ordered.

For example, choosing a $5\times 5$ grid and the cycle $(3 5 1 4 2)$, you would rearrange the columns to obtain $(12345)$.

Then break into some $n$-grams to hide the period.

# Playfair Cipher



# ADFGVX

