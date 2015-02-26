"It is essential that these lines are called before enabling filetype
"detection, so I would recommend putting them at the top of your vimrc file."
thogen#runtime_append_all_bundles()
call pathogen#helptags()
