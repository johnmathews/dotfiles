Plug 'janko-m/vim-test'
let test#strategy = "asyncrun_background"
let test#python#runner = 'pytest'
let test#python#pytest#options = '-x'
let test#vim#term_position = "belowright"


