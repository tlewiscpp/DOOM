file(REMOVE_RECURSE
  "DOOM.pdb"
  "DOOM"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/DOOM.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
