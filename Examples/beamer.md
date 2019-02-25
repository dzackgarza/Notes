---
title: "Habits"
author: John Doe
date: March 22, 2005
output:
  custom_document:
    path: my_doc.tex
    pandoc_args: [
        "-r",  "markdown+tex_math_single_backslash+simple_tables+table_captions+yaml_metadata_block+smart",
        "-t", "latex",
        "--template=/home/zack/Notes/Examples/pandoc_template.tex"
    ]
---

# In the morning

## Getting up

- Turn off alarm
- Get out of bed

## Breakfast

- Eat eggs
- Drink coffee

# In the evening

## Dinner

- Eat spaghetti
- Drink wine

----

## Going to sleep

- Get in bed
- Count sheep
