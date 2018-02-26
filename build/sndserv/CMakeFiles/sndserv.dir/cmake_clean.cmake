file(REMOVE_RECURSE
  "libsndserv.pdb"
  "libsndserv.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/sndserv.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
