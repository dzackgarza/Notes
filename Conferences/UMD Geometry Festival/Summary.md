---
title: UMD Geometry Festival 
subtitle: April 2019
output:
  custom_document:
    path: Summary.pdf
    pandoc_args: 
       - "-r" 
       - "markdown+tex_math_single_backslash+simple_tables+table_captions+yaml_metadata_block+smart"
       - "--template=/home/zack/Notes/Latex/pandoc_template.tex"
       - "--pdf-engine=xelatex"
---

# UMD Geometry Festival

These are some sketches of notes I took as an attendee at the 2019 Geometry Festival at the University of Maryland. I don't expect this to be particularly enlightening for anyone other than myself, but for those reading, perhaps this can at least give you a flavor of the topics covered. Be warned that there are certainly many mistakes, both in notation as well as my own understanding and interpretation of the topics. I hope to not misrepresent anything; please reach out if you find any glaring errors!

Also note that these only cover the first two days of talks, there were two or three on the final day that are not included here.

# Fluid Mechanics and Geometry (Yann Brenier)
@import "Talk 1: GeneralizedFlows.md"

# Moment Maps in Symplectic and Kahler Geometry (Dietmar Salamon)
@import "Talk 2: Moment Maps.md"

# Zero Sets of Laplace Eigenfunctions (Aleksandr Logunov)
@import "Talk 3: Zero Sets of Laplace Eigenfunctions.md"

# The Geometry and Arithmetic of the World's Smallest Calibi-Yau Threefolds (Jim Bryan)
@import "Talk 4: The World's Smallest Calabi-Yau.md"

# Boundary Operator Associated to Sigma_k Curvature (Yi Wang)
@import "Talk 5: Boundary operator associated to sigma_k curvature.md"

# Spectral Asymptotics on Stationary Spacetimes (Steven Zelditch)
@import "Talk 6: Spectral asymptotics on stationary spacetimes.md"