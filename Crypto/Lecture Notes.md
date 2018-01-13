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

First, make a $5\times 5$ box containing every letter of the alphabet (combining $I/J$ into one box is common). This can be done by choosing some code word - start filling in the boxes with this word, when a repeated letter comes up just skip it. When done, fill in the rest of the alphabet in order.

To encode, break plaintext into 2-grams(insert $x$ to prevent double letters or to fill). For each one, examine their position in the box.

- If same row, choose letters to the right
- If same column, choose letters below
- Otherwise, choose the rectangle they form and swap in the row direction

# ADFGVX

Key is a 6x6 grid and a permutation of $[n]$ (or equivalently, a keyword with no repeated letters).

First fill the grid with a mixed alphabet. Then each letter is identified with its coordinate in the grid, labeled by "ADFGVX" on the columns and rows (so each letter gets a code of length 2).

Then write the message in a grid underneath the permutation key, then permute the columns to sort the permutation. Then read of the columns.



# Monoalphabetic Cipher

Just pick a permutation of the alphabet, one of 26! possibilities.

# Homophonic Substition

Pick a keyword of length $l$, then write the alphabet with $l$ rows beneath it.  In row $i$, consider the $i$-th letter of the keyword. Label this with a 1, then continue labeling cyclically.

Then add 25 to 2nd row, 50 to the 3rd, 75 to the 4th, and so on.

Then to encode, pick a starting row - pick the number corresponding to the letter in your message, then move down a row for the next letter, and so on.

# Vernam Cipher

