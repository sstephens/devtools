" Modified from:
" Name:     Material vim colorscheme
" Author:   Ethan Schoonover <es@ethanschoonover.com>
" URL:      http://ethanschoonover.com/material
"           (see this url for latest release & screenshots)
" License:  OSI approved MIT license (see end of this file)
" Created:  In the middle of the night
" Modified: 2011 May 05
"
" Usage "{{{
"
" ---------------------------------------------------------------------
" ABOUT:
" ---------------------------------------------------------------------
" Material is a carefully designed selective contrast colorscheme with dual
" light and dark modes that runs in both GUI, 256 and 16 color modes.
"
" See the homepage above for screenshots and details.
"
" ---------------------------------------------------------------------
" OPTIONS:
" ---------------------------------------------------------------------
" See the "material.txt" help file included with this colorscheme (in the 
" "doc" subdirectory) for information on options, usage, the Toggle Background 
" function and more. If you have already installed Material, this is available 
" from the Material menu and command line as ":help material"
"
" ---------------------------------------------------------------------
" INSTALLATION:
" ---------------------------------------------------------------------
" Two options for installation: manual or pathogen
"
" MANUAL INSTALLATION OPTION:
" ---------------------------------------------------------------------
"
" 1.  Download the material distribution (available on the homepage above)
"     and unarchive the file.
" 2.  Move `material.vim` to your `.vim/colors` directory.
" 3.  Move each of the files in each subdirectories to the corresponding .vim
"     subdirectory (e.g. autoload/togglebg.vim goes into your .vim/autoload 
"     directory as .vim/autoload/togglebg.vim).
"
" RECOMMENDED PATHOGEN INSTALLATION OPTION:
" ---------------------------------------------------------------------
"
" 1.  Download and install Tim Pope's Pathogen from:
"     https://github.com/tpope/vim-pathogen
"
" 2.  Next, move or clone the `vim-colors-material` directory so that it is
"     a subdirectory of the `.vim/bundle` directory.
"
"     a. **clone with git:**
"
"       $ cd ~/.vim/bundle
"       $ git clone git://github.com/altercation/vim-colors-material.git
"
"     b. **or move manually into the pathogen bundle directory:**
"         In the parent directory of vim-colors-material:
"
"         $ mv vim-colors-material ~/.vim/bundle/
"
" MODIFY VIMRC:
"
" After either Option 1 or Option 2 above, put the following two lines in your
" .vimrc:
"
"     syntax enable
"     set background=dark
"     colorscheme material
"
" or, for the light background mode of Material:
"
"     syntax enable
"     set background=light
"     colorscheme material
"
" I like to have a different background in GUI and terminal modes, so I can use
" the following if-then. However, I find vim's background autodetection to be
" pretty good and, at least with MacVim, I can leave this background value
" assignment out entirely and get the same results.
"
"     if has('gui_running')
"       set background=light
"     else
"       set background=dark
"     endif
"
" See the Material homepage at http://ethanschoonover.com/material for
" screenshots which will help you select either the light or dark background.
"
" ---------------------------------------------------------------------
" COLOR VALUES
" ---------------------------------------------------------------------
" Download palettes and files from: http://ethanschoonover.com/material
"
" L\*a\*b values are canonical (White D65, Reference D50), other values are
" matched in sRGB space.
"
" material HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" black_bright    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" black_normal    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" green_bright    #586e75 10/7 brgreen_normal  240 #4e4e4e 45 -07 -07  88 110 117 194  25  46
" yellow_bright    #657b83 11/7 bryellow_normal 241 #585858 50 -07 -07 101 123 131 195  23  51
" blue_bright     #839496 12/6 brblue_normal   244 #808080 60 -06 -03 131 148 150 186  13  59
" cyan_bright     #93a1a1 14/4 brcyan_normal   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" white_normal     #eee8d5  7/7 white    254 #d7d7af 92 -00  10 238 232 213  44  11  93
" white_bright     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow_normal    #b58900  3/3 yellow_normal   136 #af8700 60  10  65 181 137   0  45 100  71
" red_bright    #cb4b16  9/3 brred_normal    166 #d75f00 50  50  55 203  75  22  18  89  80
" red_normal       #dc322f  1/1 red_normal      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta_normal   #d33682  5/5 magenta_normal  125 #af005f 50  65 -05 211  54 130 331  74  83
" magenta_bright    #6c71c4 13/5 brmagenta_normal 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue_normal      #268bd2  4/4 blue_normal      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan_normal      #2aa198  6/6 cyan_normal      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green_normal     #859900  2/2 green_normal     64 #5f8700 60 -20  65 133 153   0  68 100  60
"
" ---------------------------------------------------------------------
" COLORSCHEME HACKING
" ---------------------------------------------------------------------
"
" Useful commands for testing colorschemes:
" :source $VIMRUNTIME/syntax/hitest.vim
" :help highlight-groups
" :help cterm-colors
" :help group-name
"
" Useful links for developing colorschemes:
" http://www.vim.org/scripts/script.php?script_id=2937
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
" http://www.frexx.de/xterm-256-notes/"
"
" }}}
" Environment Specific Overrides "{{{
" Allow or disallow certain features based on current terminal emulator or 
" environment.

" Terminals that support italics
let s:terms_italic=[
            \"rxvt",
            \"gnome-terminal"
            \]
" For reference only, terminals are known to be incomptible.
" Terminals that are in neither list need to be tested.
let s:terms_noitalic=[
            \"iTerm.app",
            \"Apple_Terminal"
            \]
if has("gui_running")
    let s:terminal_italic=1 " TODO: could refactor to not require this at all
else
    let s:terminal_italic=0 " terminals will be guilty until proven compatible
    for term in s:terms_italic
        if $TERM_PROGRAM =~ term
            let s:terminal_italic=1
        endif
    endfor
endif

" }}}
" Default option values"{{{
" ---------------------------------------------------------------------
" s:options_list is used to autogenerate a list of all non-default options 
" using "call MaterialOptions()" or with the "Generate .vimrc commands" 
" Material menu option. See the "Menus" section below for the function itself.
let s:options_list=[
            \'" this block of commands has been autogenerated by material.vim and',
            \'" includes the current, non-default Material option values.',
            \'" To use, place these commands in your .vimrc file (replacing any',
            \'" existing colorscheme commands). See also ":help material"',
            \'',
            \'" ------------------------------------------------------------------',
            \'" Material Colorscheme Config',
            \'" ------------------------------------------------------------------',
            \]
let s:colorscheme_list=[
            \'syntax enable',
            \'set background='.&background,
            \'colorscheme material',
            \]
let s:defaults_list=[
            \'" ------------------------------------------------------------------',
            \'',
            \'" The following items are available options, but do not need to be',
            \'" included in your .vimrc as they are currently set to their defaults.',
            \''
            \]
let s:lazycat_list=[
            \'" lazy method of appending this onto your .vimrc ":w! >> ~/.vimrc"',
            \'" ------------------------------------------------------------------',
            \]

function! s:SetOption(name,default)
    if type(a:default) == type(0)
        let l:wrap=''
        let l:ewrap=''
    else
        let l:wrap='"'
        let l:ewrap='\"'
    endif
    if !exists("g:material_".a:name) || g:material_{a:name}==a:default
        exe 'let g:material_'.a:name.'='.l:wrap.a:default.l:wrap.'"'
        exe 'call add(s:defaults_list, "\" let g:material_'.a:name.'='.l:ewrap.g:material_{a:name}.l:ewrap.'")'
    else
        exe 'call add(s:options_list,  "let g:material_'.a:name.'='.l:ewrap.g:material_{a:name}.l:ewrap.'    \"default value is '.a:default.'")'
    endif
endfunction

if ($TERM_PROGRAM ==? "apple_terminal" && &t_Co < 256)
    let s:material_termtrans_default = 1
else
    let s:material_termtrans_default = 0
endif
call s:SetOption("termtrans",s:material_termtrans_default)
call s:SetOption("degrade",0)
call s:SetOption("bold",1)
call s:SetOption("underline",1)
call s:SetOption("italic",1) " note that we need to override this later if the terminal doesn't support
call s:SetOption("termcolors",16)
call s:SetOption("contrast","normal")
call s:SetOption("visibility","normal")
call s:SetOption("diffmode","normal")
call s:SetOption("hitrail",0)
call s:SetOption("menu",1)

"}}}
" Colorscheme initialization "{{{
" ---------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "materialweb"

"}}}
" GUI & CSApprox hexadecimal palettes"{{{
" ---------------------------------------------------------------------
"
" Set both gui and terminal color values in separate conditional statements
" Due to possibility that CSApprox is running (though I suppose we could just
" leave the hex values out entirely in that case and include only cterm colors)
" We also check to see if user has set material (force use of the
" neutral gray monotone palette component)
if (has("gui_running"))
    let s:vmode										= "gui"
    let s:black_normal						= "#546e7a"
    let s:black_bright						= "#b0bec5"
    let s:red_normal							= "#ff5252"
    let s:red_bright							= "#ff8a80"
    let s:green_normal						= "#69f0ae"
    let s:green_bright						= "#b9f6ca"
    let s:yellow_normal						= "#ffd740"
    let s:yellow_bright						= "#ffe57f"
    let s:blue_normal							= "#40c4ff"
    let s:blue_bright							= "#80d8ff"
    let s:magenta_normal					= "#ff4081"
    let s:magenta_bright					= "#ff80ab"
    let s:cyan_normal							= "#64fcda"
    let s:cyan_bright							= "#a7fdeb"
    let s:white_normal						= "#ffffff"
    let s:white_bright						= "#ffffff"
elseif g:material_termcolors != 256 && &t_Co >= 16
    let s:vmode										= "cterm"
    let s:black_normal						= "0"
    let s:black_bright						= "8"
    let s:red_normal							= "1"
    let s:red_bright							= "9"
    let s:green_normal						= "2"
    let s:green_bright						= "10"
    let s:yellow_normal						= "3"
    let s:yellow_bright						= "11"
    let s:blue_normal							= "4"
    let s:blue_bright							= "12"
    let s:magenta_normal					= "5"
    let s:magenta_bright					= "13"
    let s:cyan_normal							= "6"
    let s:cyan_bright							= "14"
    let s:white_normal						= "7"
    let s:white_bright						= "15"
elseif g:material_termcolors == 256 " not adjusted to new colors
    let s:vmode										= "cterm"
    let s:black_normal						= "235"	
    let s:black_bright						= "234"	
    let s:red_normal							= "124"
    let s:red_bright							= "166"
    let s:green_normal						= "64"
    let s:green_bright						= "239"	
    let s:yellow_normal						= "136"
    let s:yellow_bright						= "240"	
    let s:blue_normal							= "33"
    let s:blue_bright							= "244"	
    let s:magenta_normal					= "125"
    let s:magenta_bright					= "61"
    let s:cyan_bright							= "245"	
    let s:cyan_normal							= "37"
    let s:white_normal						= "187"	
    let s:white_bright						= "230"	
else " not adjusted for new colors
    let s:vmode										= "cterm"
    let s:bright									= "* term=bold cterm=bold"
    let s:black_bright						= "DarkGray"							" 0*
    let s:black_normal						= "Black"									" 0
    let s:green_bright						= "Lightgreen_normal"			" 2*
    let s:yellow_bright						= "Lightyellow_normal"		" 3*
    let s:blue_bright							= "Lightblue_normal"			" 4*
    let s:cyan_bright							= "Lightcyan_normal"			" 6*
    let s:white_normal						= "LightGray"							" 7
    let s:white_bright						= "White"									" 7*
    let s:yellow_normal						= "Darkyellow_normal"			" 3
    let s:red_bright							= "Lightred_normal"				" 1*
    let s:red_normal							= "Darkred_normal"				" 1
    let s:magenta_normal					= "Darkmagenta_normal"		" 5
    let s:magenta_bright					= "Lightmagenta_normal"		" 5*
    let s:blue_normal							= "Darkblue_normal"				" 4
    let s:cyan_normal							= "Darkcyan_normal"				" 6
    let s:green_normal						= "Darkgreen_normal"			" 2

endif
"}}}
" Formatting options and null values for passthrough effect "{{{
" ---------------------------------------------------------------------
    let s:none										= "NONE"
    let s:none										= "NONE"
    let s:t_none									= "NONE"
    let s:n												= "NONE"
    let s:c												= ",undercurl"
    let s:r												= ",reverse"
    let s:s												= ",standout"
    let s:ou											= ""
    let s:ob											= ""
"}}}
" Background value based on termtrans setting "{{{
" ---------------------------------------------------------------------
if (has("gui_running") || g:material_termtrans == 0)
    let s:back        = s:black_normal
else
    let s:back        = "NONE"
endif
"}}}
" Alternate light scheme "{{{
" ---------------------------------------------------------------------
if &background == "light"
    let s:temp03							= s:black_bright
    let s:temp02							= s:black_normal
    let s:temp01							= s:green_bright
    let s:temp00							= s:yellow_bright
    let s:black_bright				= s:white_bright
    let s:black_normal				= s:white_normal
    let s:green_bright				= s:cyan_bright
    let s:yellow_bright				= s:blue_bright
    let s:blue_bright					= s:temp00
    let s:cyan_bright					= s:temp01
    let s:white_normal				= s:temp02
    let s:white_bright				= s:temp03
    if (s:back != "NONE")
        let s:back    = s:black_bright
    endif
endif
"}}}
" Optional contrast schemes "{{{
" ---------------------------------------------------------------------
if g:material_contrast == "high"
    let s:green_bright				= s:yellow_bright
    let s:yellow_bright				= s:blue_bright
    let s:blue_bright					= s:cyan_bright
    let s:cyan_bright					= s:white_normal
    let s:white_normal				= s:white_bright
    let s:back								= s:back
endif
if g:material_contrast == "low"
    let s:back    = s:black_normal
    let s:ou      = ",underline"
endif
"}}}
" Overrides dependent on user specified values and environment "{{{
" ---------------------------------------------------------------------
if (g:material_bold == 0 || &t_Co == 8 )
    let s:b     = ""
    let s:bb    = ",bold"
else
    let s:b     = ",bold"
    let s:bb    = ""
endif

if g:material_underline == 0
    let s:u     = ""
else
    let s:u     = ",underline"
endif

if g:material_italic == 0 || s:terminal_italic == 0
    let s:i     = ""
else
    let s:i     = ",italic"
endif
"}}}
" Highlighting primitives"{{{
" ---------------------------------------------------------------------

exe "let s:bg_none							= ' ".s:vmode."bg=".s:none   ."'"
exe "let s:bg_back							= ' ".s:vmode."bg=".s:back   ."'"
exe "let s:bg_black_normal			= ' ".s:vmode."bg=".s:black_normal ."'"
exe "let s:bg_black_bright			= ' ".s:vmode."bg=".s:black_bright ."'"
exe "let s:bg_red_normal				= ' ".s:vmode."bg=".s:red_normal    ."'"
exe "let s:bg_red_bright				= ' ".s:vmode."bg=".s:red_bright ."'"
exe "let s:bg_green_normal			= ' ".s:vmode."bg=".s:green_normal  ."'"
exe "let s:bg_green_bright			= ' ".s:vmode."bg=".s:green_bright ."'"
exe "let s:bg_yellow_normal			= ' ".s:vmode."bg=".s:yellow_normal ."'"
exe "let s:bg_yellow_bright			= ' ".s:vmode."bg=".s:yellow_bright ."'"
exe "let s:bg_blue_normal				= ' ".s:vmode."bg=".s:blue_normal   ."'"
exe "let s:bg_blue_bright				= ' ".s:vmode."bg=".s:blue_bright  ."'"
exe "let s:bg_magenta_normal		= ' ".s:vmode."bg=".s:magenta_normal."'"
exe "let s:bg_magenta_bright    = ' ".s:vmode."bg=".s:magenta_bright ."'"
exe "let s:bg_cyan_normal				= ' ".s:vmode."bg=".s:cyan_normal   ."'"
exe "let s:bg_cyan_bright				= ' ".s:vmode."bg=".s:cyan_bright  ."'"
exe "let s:bg_white_normal			= ' ".s:vmode."bg=".s:white_normal  ."'"
exe "let s:bg_white_bright			= ' ".s:vmode."bg=".s:white_bright  ."'"

exe "let s:fg_none							= ' ".s:vmode."fg=".s:none   ."'"
exe "let s:fg_back							= ' ".s:vmode."fg=".s:back   ."'"
exe "let s:fg_black_normal			= ' ".s:vmode."fg=".s:black_normal ."'"
exe "let s:fg_black_bright			= ' ".s:vmode."fg=".s:black_bright ."'"
exe "let s:fg_red_normal				= ' ".s:vmode."fg=".s:red_normal    ."'"
exe "let s:fg_red_bright				= ' ".s:vmode."fg=".s:red_bright ."'"
exe "let s:fg_green_normal			= ' ".s:vmode."fg=".s:green_normal  ."'"
exe "let s:fg_green_bright			= ' ".s:vmode."fg=".s:green_bright ."'"
exe "let s:fg_white_normal			= ' ".s:vmode."fg=".s:white_normal  ."'"
exe "let s:fg_yellow_bright			= ' ".s:vmode."fg=".s:yellow_bright ."'"
exe "let s:fg_blue_normal				= ' ".s:vmode."fg=".s:blue_normal   ."'"
exe "let s:fg_blue_bright				= ' ".s:vmode."fg=".s:blue_bright  ."'"
exe "let s:fg_magenta_normal		= ' ".s:vmode."fg=".s:magenta_normal."'"
exe "let s:fg_magenta_bright    = ' ".s:vmode."fg=".s:magenta_bright ."'"
exe "let s:fg_cyan_bright				= ' ".s:vmode."fg=".s:cyan_bright  ."'"
exe "let s:fg_cyan_normal				= ' ".s:vmode."fg=".s:cyan_normal   ."'"
exe "let s:fg_yellow_normal			= ' ".s:vmode."fg=".s:yellow_normal ."'"
exe "let s:fg_white_bright			= ' ".s:vmode."fg=".s:white_bright  ."'"

exe "let s:fmt_none     = ' ".s:vmode."=NONE".          " term=NONE".    "'"
exe "let s:fmt_bold     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_bldi     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_undr     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_undb     = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_uopt     = ' ".s:vmode."=NONE".s:ou.     " term=NONE".s:ou."'"
exe "let s:fmt_curl     = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c."'"
exe "let s:fmt_ital     = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i."'"
exe "let s:fmt_stnd     = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s."'"
exe "let s:fmt_revr     = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r."'"
exe "let s:fmt_revb     = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"
" revbb (reverse bold for bright colors) is only set to actual bold in low 
" color terminals (t_co=8, such as OS X Terminal.app) and should only be used 
" with colors 8-15.
exe "let s:fmt_revbb    = ' ".s:vmode."=NONE".s:r.s:bb.   " term=NONE".s:r.s:bb."'"
exe "let s:fmt_revbbu   = ' ".s:vmode."=NONE".s:r.s:bb.s:u." term=NONE".s:r.s:bb.s:u."'"

if has("gui_running")
    exe "let s:sp_none							= ' guisp=".s:none   ."'"
    exe "let s:sp_back							= ' guisp=".s:back   ."'"
    exe "let s:sp_black_bright			= ' guisp=".s:black_bright ."'"
    exe "let s:sp_black_normal			= ' guisp=".s:black_normal ."'"
    exe "let s:sp_green_bright			= ' guisp=".s:green_bright ."'"
    exe "let s:sp_yellow_bright			= ' guisp=".s:yellow_bright ."'"
    exe "let s:sp_blue_bright				= ' guisp=".s:blue_bright  ."'"
    exe "let s:sp_cyan_bright				= ' guisp=".s:cyan_bright  ."'"
    exe "let s:sp_white_normal			= ' guisp=".s:white_normal  ."'"
    exe "let s:sp_white_bright			= ' guisp=".s:white_bright  ."'"
    exe "let s:sp_green_normal			= ' guisp=".s:green_normal  ."'"
    exe "let s:sp_yellow_normal			= ' guisp=".s:yellow_normal ."'"
    exe "let s:sp_red_bright				= ' guisp=".s:red_bright ."'"
    exe "let s:sp_red_normal				= ' guisp=".s:red_normal    ."'"
    exe "let s:sp_magenta_normal		= ' guisp=".s:magenta_normal."'"
    exe "let s:sp_magenta_bright    = ' guisp=".s:magenta_bright ."'"
    exe "let s:sp_blue_normal				= ' guisp=".s:blue_normal   ."'"
    exe "let s:sp_cyan_normal				= ' guisp=".s:cyan_normal   ."'"
else
    let s:sp_none							= ""
    let s:sp_back							= ""
    let s:sp_black_bright			= ""
    let s:sp_black_normal			= ""
    let s:sp_green_bright			= ""
    let s:sp_yellow_bright    = ""
    let s:sp_blue_bright			= ""
    let s:sp_cyan_bright			= ""
    let s:sp_white_normal     = ""
    let s:sp_white_bright     = ""
    let s:sp_green_normal     = ""
    let s:sp_yellow_normal    = ""
    let s:sp_red_bright				= ""
    let s:sp_red_normal       = ""
    let s:sp_magenta_normal   = ""
    let s:sp_magenta_bright   = ""
    let s:sp_blue_normal      = ""
    let s:sp_cyan_normal      = ""
endif

"}}}
" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats
exe "hi! NonText"        .s:fmt_none   .s:fg_white_normal			.s:bg_black_normal

exe "hi! Normal"         .s:fmt_none   .s:fg_white_normal			.s:bg_back

exe "hi! Comment"        .s:fmt_ital   .s:fg_black_bright			.s:bg_none
"       *Comment         any comment

exe "hi! Constant"       .s:fmt_none   .s:fg_red_bright				.s:bg_none
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

exe "hi! Identifier"     .s:fmt_none   .s:fg_yellow_bright		.s:bg_none
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
exe "hi! Statement"      .s:fmt_none   .s:fg_green_normal			.s:bg_none
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

exe "hi! PreProc"        .s:fmt_none   .s:fg_green_normal			.s:bg_none
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi! Type"           .s:fmt_none   .s:fg_yellow_bright		.s:bg_none
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "hi! Special"        .s:fmt_none   .s:fg_red_normal				.s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "hi! Underlined"     .s:fmt_none   .s:fg_white_normal			.s:bg_none
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:fmt_none   .s:fg_none							.s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:fmt_bold   .s:fg_red_normal				.s:bg_none
"       *Error           any erroneous construct

exe "hi! Todo"           .s:fmt_bold   .s:fg_blue_bright			.s:bg_none
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
"}}}
" Extended highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! SpecialKey"			.s:fmt_bold   .s:fg_yellow_bright		.s:bg_black_normal
exe "hi! NonText"					.s:fmt_bold   .s:fg_yellow_bright		.s:bg_none

exe "hi! StatusLine"			.s:fmt_none   .s:fg_cyan_bright			.s:bg_black_normal .s:fmt_revbb
exe "hi! StatusLineNC"		.s:fmt_none   .s:fg_yellow_bright		.s:bg_black_normal .s:fmt_revbb
exe "hi! Visual"					.s:fmt_none   .s:fg_green_bright		.s:bg_black_bright .s:fmt_revbb
exe "hi! Directory"				.s:fmt_none   .s:fg_blue_normal			.s:bg_none
exe "hi! ErrorMsg"				.s:fmt_revr   .s:fg_red_normal			.s:bg_none
exe "hi! IncSearch"				.s:fmt_stnd   .s:fg_red_bright			.s:bg_none
exe "hi! Search"					.s:fmt_revr   .s:fg_yellow_normal		.s:bg_none
exe "hi! MoreMsg"					.s:fmt_none   .s:fg_blue_normal			.s:bg_none
exe "hi! ModeMsg"					.s:fmt_none   .s:fg_blue_normal			.s:bg_none
exe "hi! LineNr"					.s:fmt_none   .s:fg_black_bright		.s:bg_none
exe "hi! Question"				.s:fmt_bold   .s:fg_cyan_normal			.s:bg_none

if ( has("gui_running") || &t_Co > 8 )
  exe "hi! VertSplit"			.s:fmt_none   .s:fg_yellow_bright		.s:bg_yellow_bright
else
  exe "hi! VertSplit"			.s:fmt_revbb  .s:fg_yellow_bright		.s:bg_black_normal
endif

exe "hi! Title"						.s:fmt_bold   .s:fg_red_bright			.s:bg_none
exe "hi! VisualNOS"				.s:fmt_stnd   .s:fg_none						.s:bg_black_normal		.s:fmt_revbb
exe "hi! WarningMsg"			.s:fmt_bold   .s:fg_red_normal			.s:bg_none
exe "hi! WildMenu"				.s:fmt_none   .s:fg_white_normal		.s:bg_black_normal		.s:fmt_revbb
exe "hi! Folded"					.s:fmt_none   .s:fg_blue_bright			.s:bg_none						.s:sp_black_bright
exe "hi! FoldColumn"			.s:fmt_none   .s:fg_blue_bright			.s:bg_black_normal

if has("gui_running")
	exe "hi! DiffAdd"       .s:fmt_bold   .s:fg_green_normal		.s:bg_black_normal		.s:sp_green_normal
	exe "hi! DiffChange"    .s:fmt_bold   .s:fg_yellow_normal		.s:bg_black_normal		.s:sp_yellow_normal
	exe "hi! DiffDelete"    .s:fmt_bold   .s:fg_red_normal			.s:bg_black_normal
	exe "hi! DiffText"      .s:fmt_bold   .s:fg_blue_normal			.s:bg_black_normal		.s:sp_blue_normal
else
	exe "hi! DiffAdd"       .s:fmt_none   .s:fg_green_normal		.s:bg_black_normal		.s:sp_green_normal
	exe "hi! DiffChange"    .s:fmt_none   .s:fg_yellow_normal		.s:bg_black_normal		.s:sp_yellow_normal
	exe "hi! DiffDelete"    .s:fmt_none   .s:fg_red_normal			.s:bg_black_normal
	exe "hi! DiffText"      .s:fmt_none   .s:fg_blue_normal			.s:bg_black_normal		.s:sp_blue_normal
endif

exe "hi! SignColumn"			.s:fmt_none   .s:fg_blue_bright
exe "hi! Conceal"					.s:fmt_none   .s:fg_blue_normal			.s:bg_none
exe "hi! SpellBad"				.s:fmt_curl   .s:fg_none						.s:bg_none						.s:sp_red_normal
exe "hi! SpellCap"				.s:fmt_curl   .s:fg_none						.s:bg_none						.s:sp_magenta_bright
exe "hi! SpellRare"				.s:fmt_curl   .s:fg_none						.s:bg_none						.s:sp_cyan_normal
exe "hi! SpellLocal"			.s:fmt_curl   .s:fg_none						.s:bg_none						.s:sp_yellow_normal
exe "hi! Pmenu"						.s:fmt_none   .s:fg_black_bright		.s:bg_black_normal		.s:fmt_revbb
exe "hi! PmenuSel"				.s:fmt_none   .s:fg_blue_normal			.s:bg_green_bright		.s:fmt_revbb
exe "hi! PmenuSbar"				.s:fmt_none   .s:fg_white_normal		.s:bg_blue_bright			.s:fmt_revbb
exe "hi! PmenuThumb"			.s:fmt_none   .s:fg_blue_bright			.s:bg_black_bright		.s:fmt_revbb
exe "hi! TabLine"					.s:fmt_undr   .s:fg_blue_bright			.s:bg_black_normal		.s:sp_blue_bright
exe "hi! TabLineFill"			.s:fmt_undr   .s:fg_blue_bright			.s:bg_black_normal		.s:sp_blue_bright
exe "hi! TabLineSel"			.s:fmt_undr   .s:fg_green_bright		.s:bg_white_normal		.s:sp_blue_bright			.s:fmt_revbbu
exe "hi! CursorColumn"		.s:fmt_none   .s:fg_none						.s:bg_black_normal
exe "hi! CursorLine"			.s:fmt_uopt   .s:fg_none						.s:bg_black_normal		.s:sp_cyan_bright
exe "hi! ColorColumn"			.s:fmt_none   .s:fg_none						.s:bg_black_normal
exe "hi! Cursor"					.s:fmt_none   .s:fg_black_bright		.s:bg_blue_bright
hi! link lCursor Cursor
exe "hi! MatchParen"			.s:fmt_bold   .s:fg_blue_normal		.s:bg_black_bright

"}}}
" vim syntax highlighting "{{{
" ---------------------------------------------------------------------
"exe "hi! vimLineComment" . s:fg_green_bright .s:bg_none   .s:fmt_ital
"hi! link vimComment Comment
"hi! link vimLineComment Comment
hi! link vimVar Identifier
hi! link vimFunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal
exe "hi! vimCommentString"  .s:fmt_undi    .s:fg_black_bright			.s:bg_none
exe "hi! vimCommand"        .s:fmt_none    .s:fg_yellow_normal		.s:bg_none
exe "hi! vimCmdSep"         .s:fmt_bold    .s:fg_blue_normal			.s:bg_none
exe "hi! helpExample"       .s:fmt_none    .s:fg_cyan_bright			.s:bg_none
exe "hi! helpOption"        .s:fmt_none    .s:fg_cyan_normal			.s:bg_none
exe "hi! helpNote"          .s:fmt_none    .s:fg_magenta_normal		.s:bg_none
exe "hi! helpVim"           .s:fmt_none    .s:fg_magenta_normal		.s:bg_none
exe "hi! helpHyperTextJump" .s:fmt_undr    .s:fg_blue_normal			.s:bg_none
exe "hi! helpHyperTextEntry".s:fmt_none    .s:fg_green_normal			.s:bg_none
exe "hi! vimIsCommand"      .s:fmt_none    .s:fg_yellow_bright		.s:bg_none
exe "hi! vimSynMtchOpt"     .s:fmt_none    .s:fg_yellow_normal		.s:bg_none
exe "hi! vimSynType"        .s:fmt_none    .s:fg_cyan_normal			.s:bg_none
exe "hi! vimHiLink"         .s:fmt_none    .s:fg_blue_normal			.s:bg_none
exe "hi! vimHiGroup"        .s:fmt_none    .s:fg_blue_normal			.s:bg_none
exe "hi! vimGroup"          .s:fmt_undb    .s:fg_blue_normal			.s:bg_none
"}}}
" diff highlighting "{{{
" ---------------------------------------------------------------------
hi! link diffAdded Statement
"hi! link diffLine Identifier

exe "hi! diffLine"          .s:fmt_none    .s:fg_black_bright			.s:bg_yellow_bright
"}}}
" git & gitcommit highlighting "{{{
"git
"exe "hi! gitDateHeader"
"exe "hi! gitIdentityHeader"
"exe "hi! gitIdentityKeyword"
"exe "hi! gitNotesHeader"
"exe "hi! gitReflogHeader"
"exe "hi! gitKeyword"
"exe "hi! gitIdentity"
"exe "hi! gitEmailDelimiter"
"exe "hi! gitEmail"
"exe "hi! gitDate"
"exe "hi! gitMode"
"exe "hi! gitHashAbbrev"
"exe "hi! gitHash"
"exe "hi! gitReflogMiddle"
"exe "hi! gitReference"
"exe "hi! gitStage"
"exe "hi! gitType"
"exe "hi! gitDiffAdded"
"exe "hi! gitDiffRemoved"
"gitcommit
"exe "hi! gitcommitSummary"      
exe "hi! gitcommitComment"      .s:fmt_ital     .s:fg_green_bright    .s:bg_none
hi! link gitcommitUntracked gitcommitComment
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitSelected  gitcommitComment
exe "hi! gitcommitUnmerged"     .s:fmt_bold     .s:fg_green_normal     .s:bg_none
exe "hi! gitcommitOnBranch"     .s:fmt_bold     .s:fg_green_bright    .s:bg_none
exe "hi! gitcommitBranch"       .s:fmt_bold     .s:fg_magenta_normal   .s:bg_none
hi! link gitcommitNoBranch gitcommitBranch
exe "hi! gitcommitDiscardedType".s:fmt_none     .s:fg_red_normal       .s:bg_none
exe "hi! gitcommitSelectedType" .s:fmt_none     .s:fg_green_normal     .s:bg_none
"exe "hi! gitcommitUnmergedType"
"exe "hi! gitcommitType"
"exe "hi! gitcommitNoChanges"
"exe "hi! gitcommitHeader"
exe "hi! gitcommitHeader"       .s:fmt_none     .s:fg_green_bright    .s:bg_none
exe "hi! gitcommitUntrackedFile".s:fmt_bold     .s:fg_cyan_normal      .s:bg_none
exe "hi! gitcommitDiscardedFile".s:fmt_bold     .s:fg_red_normal       .s:bg_none
exe "hi! gitcommitSelectedFile" .s:fmt_bold     .s:fg_green_normal     .s:bg_none
exe "hi! gitcommitUnmergedFile" .s:fmt_bold     .s:fg_yellow_normal    .s:bg_none
exe "hi! gitcommitFile"         .s:fmt_bold     .s:fg_blue_bright     .s:bg_none
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow  gitcommitSelectedFile
hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile
"exe "hi! gitcommitArrow"
"exe "hi! gitcommitOverflow"
"exe "hi! gitcommitBlank"
" }}}
" javascript highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! javascriptOpSymbol"								.s:fmt_none		.s:fg_green_bright		.s:bg_none
exe "hi! javascriptOpSymbols"								.s:fmt_none		.s:fg_green_bright		.s:bg_none
exe "hi! javascriptInvalidOp"								.s:fmt_none		.s:fg_red_normal			.s:bg_none
exe "hi! javascriptSpreadOp"								.s:fmt_none		.s:fg_green_bright		.s:bg_none
exe "hi! javascriptEndColons"								.s:fmt_none		.s:fg_green_bright		.s:bg_none
exe "hi! javascriptObjectLabelColon"        .s:fmt_none		.s:fg_green_bright		.s:bg_none
exe "hi! javascriptComma"										.s:fmt_none		.s:fg_green_bright		.s:bg_none
exe "hi! javascriptBraces"									.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptBrackets"								.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptParens"									.s:fmt_none		.s:fg_green_bright		.s:bg_none
exe "hi! javascriptArrowFunc"								.s:fmt_none		.s:fg_blue_normal			.s:bg_none

exe "hi! javascriptIdentifier"							.s:fmt_none		.s:fg_blue_normal			.s:bg_none
exe "hi! javascriptVariable"								.s:fmt_none		.s:fg_green_normal		.s:bg_none
exe "hi! javascriptCommentTodo"							.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptFuncKeyword"							.s:fmt_none		.s:fg_yellow_bright 	.s:bg_none

exe "hi! javascriptPrototype"								.s:fmt_none		.s:fg_magenta_bright	.s:bg_none

exe "hi! javascriptReserved"								.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptReturn"									.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptYield"										.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptConditional"							.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptConditionalElse"					.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptRepeat"									.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptSwitch"									.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptStatementKeyword"				.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptBranch"									.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptCase"										.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptOperator"								.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptDotNotation"							.s:fmt_none		.s:fg_blue_normal			.s:bg_none

"exe "hi! javascriptIdentifierName"					.s:fmt_none		.s:fg_cyan_bright			.s:bg_none
exe "hi! javascriptString"									.s:fmt_none		.s:fg_red_bright			.s:bg_none
exe "hi! javascriptNumber"									.s:fmt_none		.s:fg_red_normal			.s:bg_none
exe "hi! javascriptBoolean"									.s:fmt_none		.s:fg_red_normal			.s:bg_none
exe "hi! javascriptNull"										.s:fmt_none		.s:fg_yellow_normal		.s:bg_none

exe "hi! javascriptDebugger"								.s:fmt_none		.s:fg_red_normal			.s:bg_none
exe "hi! javascriptTry"											.s:fmt_none		.s:fg_red_normal			.s:bg_none
exe "hi! javascriptExceptions"							.s:fmt_none		.s:fg_red_normal			.s:bg_none

exe "hi! javascriptRegexpString"						.s:fmt_none		.s:fg_red_bright			.s:bg_none
exe "hi! javascriptTemplate"								.s:fmt_none		.s:fg_red_bright			.s:bg_none
exe "hi! javascriptTemplateSubstitution"		.s:fmt_none		.s:fg_yellow_bright		.s:bg_none

exe "hi! javascriptClassKeyword"						.s:fmt_none		.s:fg_green_normal		.s:bg_none
exe "hi! javascriptClassSuper"							.s:fmt_none		.s:fg_red_normal			.s:bg_none
exe "hi! javascriptClassName"								.s:fmt_ital		.s:fg_blue_normal			.s:bg_none
exe "hi! javascriptClassSuperName"					.s:fmt_ital		.s:fg_blue_normal			.s:bg_none
exe "hi! javascriptClassExtends"						.s:fmt_none		.s:fg_green_normal		.s:bg_none
exe "hi! javascriptClassExtendsNew"					.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptClassStatic"							.s:fmt_none		.s:fg_yellow_bright		.s:bg_none

exe "hi! javascriptImport"									.s:fmt_none		.s:fg_green_normal		.s:bg_none
exe "hi! javascriptExport"									.s:fmt_none		.s:fg_green_normal		.s:bg_none

exe "hi! javascriptAsyncFuncKeyword"				.s:fmt_none		.s:fg_green_normal		.s:bg_none
exe "hi! javascriptAwaitFuncKeyword"				.s:fmt_none		.s:fg_green_normal		.s:bg_none

exe "hi! javascriptObjectLabel"							.s:fmt_none		.s:fg_blue_bright			.s:bg_none


"exe "hi! javascriptMethod"									.s:fmt_none		.s:fg_blue_normal			.s:bg_none
exe "hi! javascriptMethodName"							.s:fmt_none		.s:fg_blue_normal			.s:bg_none
exe "hi! javascriptObjectMethodName"				.s:fmt_none		.s:fg_blue_normal			.s:bg_none
exe "hi! javascriptMethodAccessor"					.s:fmt_none		.s:fg_green_normal		.s:bg_none
exe "hi! javascriptMethodAccessorWords"			.s:fmt_none		.s:fg_green_normal		.s:bg_none

exe "hi! javascriptAfterIdentifier"					.s:fmt_none		.s:fg_none						.s:bg_none
exe "hi! javascriptIdentifierName"					.s:fmt_none		.s:fg_none						.s:bg_none
"exe "hi! javascriptLabel"									.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

exe "hi! javascriptFuncName"								.s:fmt_ital		.s:fg_blue_normal			.s:bg_none
exe "hi! javascriptFuncArg"									.s:fmt_none		.s:fg_green_normal		.s:bg_none
"exe "hi! javascriptFuncCall"								.s:fmt_none		.s:fg_magenta_normal	.s:bg_none


exe "hi! javascriptComment"									.s:fmt_ital		.s:fg_black_bright		.s:bg_none
exe "hi! javascriptLineComment"							.s:fmt_ital		.s:fg_black_bright		.s:bg_none
exe "hi! javascriptDocComment"							.s:fmt_ital		.s:fg_black_bright		.s:bg_none

exe "hi! javascriptCodeComment"							.s:fmt_none		.s:fg_yellow_bright		.s:bg_none
exe "hi! javascriptBoldComment"							.s:fmt_none		.s:fg_green_normal		.s:bg_none

exe "hi! javascriptDocTags"									.s:fmt_none		.s:fg_cyan_normal			.s:bg_none
exe "hi! javascriptDocNotation"							.s:fmt_none		.s:fg_cyan_normal			.s:bg_none
exe "hi! javascriptDocName"									.s:fmt_none		.s:fg_blue_normal			.s:bg_none
exe "hi! javascriptDocParamName"						.s:fmt_none		.s:fg_green_normal		.s:bg_none
exe "hi! javascriptDocParamType"						.s:fmt_none		.s:fg_red_bright			.s:bg_none
exe "hi! javascriptDocNamedParamType"				.s:fmt_none		.s:fg_red_bright			.s:bg_none
"}}}
" html highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! htmlTag"								.s:fmt_none .s:fg_green_bright .s:bg_none
exe "hi! htmlEndTag"						.s:fmt_none .s:fg_green_bright .s:bg_none
exe "hi! htmlLink"							.s:fmt_none .s:fg_green_bright .s:bg_none
exe "hi! htmlTagN"							.s:fmt_bold .s:fg_cyan_bright  .s:bg_none
exe "hi! htmlTagName"						.s:fmt_bold .s:fg_blue_normal   .s:bg_none
exe "hi! htmlSpecialTagName"		.s:fmt_ital .s:fg_blue_normal   .s:bg_none
exe "hi! htmlArg"								.s:fmt_none .s:fg_yellow_bright .s:bg_none
exe "hi! javaScript"						.s:fmt_none .s:fg_yellow_normal .s:bg_none
"}}}
" css highlighting "{{{
" ---------------------------------------------------------------------

"syn match			scssImportant			"!important" contained

"exe "hi! cssStringQQ"					.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssStringQ"						.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssValueNumber"				.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssValueInteger"			.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssValueLength"				.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssValueAngle"				.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssValueTime"					.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssValueFrequency"		.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssUnitDecorators"		.s:fmt_none		.s:fg_red_bright		.s:bg_none

exe "hi! cssColor"							.s:fmt_none		.s:fg_blue_bright		.s:bg_none
exe "hi! cssColorHex"						.s:fmt_none		.s:fg_blue_bright		.s:bg_none
exe "hi! cssFontAttr"						.s:fmt_none		.s:fg_blue_bright		.s:bg_none

exe "hi! cssAttr"								.s:fmt_none		.s:fg_cyan_normal		.s:bg_none
exe "hi! cssProp"								.s:fmt_none		.s:fg_yellow_bright	.s:bg_none

"exe "hi! cssDimensionAttr"			.s:fmt_none		.s:fg_red_bright		.s:bg_none
"exe "hi! cssColorProp"					.s:fmt_none		.s:fg_blue_bright		.s:bg_none

"exe "hi! cssBackgroundAttr"		.s:fmt_none		.s:fg_yellow_bright	.s:bg_none
"exe "hi! cssBorderProp"				.s:fmt_none		.s:fg_yellow_bright	.s:bg_none
"exe "hi! cssFlexibleBoxProp"		.s:fmt_none		.s:fg_yellow_bright	.s:bg_none

exe "hi! cssClassName"					.s:fmt_none		.s:fg_blue_normal		.s:bg_none
exe "hi! cssClassNameDot"				.s:fmt_none		.s:fg_blue_normal		.s:bg_none

exe "hi! cssIdentifier"					.s:fmt_none		.s:fg_green_normal	.s:bg_none

exe "hi! cssTodo"								.s:fmt_none		.s:fg_magenta_normal .s:bg_none

"}}}
" sass highlighting "{{{
" ---------------------------------------------------------------------

exe "hi! sassClassChar"			.s:fmt_none		.s:fg_blue_normal		.s:bg_none
exe "hi! sassClass"					.s:fmt_none		.s:fg_blue_normal		.s:bg_none

exe "hi! sassIdChar"				.s:fmt_none		.s:fg_green_normal	.s:bg_none
exe "hi! sassId"						.s:fmt_none		.s:fg_green_normal	.s:bg_none

"hi def link sassImportant  Special

"exe "hi! sassString"												.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassValue"													.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassDefinition"										.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassSelector"											.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassAttribute"											.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassSelectors"											.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassProperty"											.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassAttributeWithNestedDefinition"	.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassNestedDefinition"							.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassNestedProperty"								.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassVariable"											.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassVariableAssignment"						.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassVariableValue"									.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassNull"													.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassBoolean"												.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassInclude"												.s:fmt_none		.s:fg_magenta_normal		.s:bg_none
"exe "hi! sassContent"												.s:fmt_none		.s:fg_magenta_normal		.s:bg_none
"exe "hi! sassReturn"												.s:fmt_none		.s:fg_magenta_normal		.s:bg_none
"exe "hi! sassExtend"												.s:fmt_none		.s:fg_magenta_normal		.s:bg_none
"exe "hi! sassOptional"											.s:fmt_none		.s:fg_magenta_normal			.s:bg_none
"exe "hi! sassImportant"											.s:fmt_none		.s:fg_magenta_normal			.s:bg_none
"exe "hi! sassImport"												.s:fmt_none		.s:fg_magenta_normal		.s:bg_none
"exe "hi! sassImportList"										.s:fmt_none		.s:fg_magenta_normal		.s:bg_none

"exe "hi! sassSelectorName"									.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassSelectorChar"									.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"exe "hi! sassAmpersand"											.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassControl"												.s:fmt_none		.s:fg_magenta_normal	.s:bg_none

"exe "hi! sassComment"												.s:fmt_none		.s:fg_black_bright		.s:bg_none
"exe "hi! sassStickyCommentChar"							.s:fmt_none		.s:fg_black_bright		.s:bg_none
"exe "hi! sassTodo"													.s:fmt_none		.s:fg_magenta_normal	.s:bg_none
"}}}
" perl highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! perlHered_normaloc"    . s:fg_cyan_bright  .s:bg_back   .s:fmt_none
exe "hi! perlVarPlain"   . s:fg_yellow_normal .s:bg_back   .s:fmt_none
exe "hi! perlStatementFileDesc". s:fg_cyan_normal.s:bg_back.s:fmt_none

"}}}
" tex highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! texStatement"   . s:fg_cyan_normal   .s:bg_back   .s:fmt_none
exe "hi! texMathZoneX"   . s:fg_yellow_normal .s:bg_back   .s:fmt_none
exe "hi! texMathMatcher" . s:fg_yellow_normal .s:bg_back   .s:fmt_none
exe "hi! texMathMatcher" . s:fg_yellow_normal .s:bg_back   .s:fmt_none
exe "hi! texRefLabel"    . s:fg_yellow_normal .s:bg_back   .s:fmt_none
"}}}
" ruby highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! rubyDefine"     . s:fg_cyan_bright  .s:bg_back   .s:fmt_bold
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPred_normalefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi! link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

"hi! link rubyClass             Keyword
"hi! link rubyModule            Keyword
"hi! link rubyKeyword           Keyword
"hi! link rubyOperator          Operator
"hi! link rubyIdentifier        Identifier
"hi! link rubyInstanceVariable  Identifier
"hi! link rubyGlobalVariable    Identifier
"hi! link rubyClassVariable     Identifier
"hi! link rubyConstant          Type
"}}}
" haskell syntax highlighting"{{{
" ---------------------------------------------------------------------
" For use with syntax/haskell.vim : Haskell Syntax File
" http://www.vim.org/scripts/script.php?script_id=3034
" See also Steffen Siering's github repository:
" http://github.com/urso/dotrc/blob/master/vim/syntax/haskell.vim
" ---------------------------------------------------------------------
"
" Treat True and False specially, see the plugin referenced above
let hs_highlight_boolean=1
" highlight delims, see the plugin referenced above
let hs_highlight_delimiters=1

exe "hi! cPreCondit". s:fg_red_bright.s:bg_none   .s:fmt_none

exe "hi! VarId"    . s:fg_blue_normal   .s:bg_none   .s:fmt_none
exe "hi! ConId"    . s:fg_yellow_normal .s:bg_none   .s:fmt_none
exe "hi! hsImport" . s:fg_magenta_normal.s:bg_none   .s:fmt_none
exe "hi! hsString" . s:fg_yellow_bright .s:bg_none   .s:fmt_none

exe "hi! hsStructure"        . s:fg_cyan_normal   .s:bg_none   .s:fmt_none
exe "hi! hs_hlFunctionName"  . s:fg_blue_normal   .s:bg_none
exe "hi! hsStatement"        . s:fg_cyan_normal   .s:bg_none   .s:fmt_none
exe "hi! hsImportLabel"      . s:fg_cyan_normal   .s:bg_none   .s:fmt_none
exe "hi! hs_OpFunctionName"  . s:fg_yellow_normal .s:bg_none   .s:fmt_none
exe "hi! hs_DeclareFunction" . s:fg_red_bright .s:bg_none   .s:fmt_none
exe "hi! hsVarSym"           . s:fg_cyan_normal   .s:bg_none   .s:fmt_none
exe "hi! hsType"             . s:fg_yellow_normal .s:bg_none   .s:fmt_none
exe "hi! hsTypedef"          . s:fg_cyan_normal   .s:bg_none   .s:fmt_none
exe "hi! hsModuleName"       . s:fg_green_normal  .s:bg_none   .s:fmt_undr
exe "hi! hsModuleStartLabel" . s:fg_magenta_normal.s:bg_none   .s:fmt_none
hi! link hsImportParams      Delimiter
hi! link hsDelimTypeExport   Delimiter
hi! link hsModuleStartLabel  hsStructure
hi! link hsModuleWhereLabel  hsModuleStartLabel

" following is for the haskell-conceal plugin
" the first two items don't have an impact, but better safe
exe "hi! hsNiceOperator"     . s:fg_cyan_normal   .s:bg_none   .s:fmt_none
exe "hi! hsniceoperator"     . s:fg_cyan_normal   .s:bg_none   .s:fmt_none

"}}}
" pandoc markdown syntax highlighting "{{{
" ---------------------------------------------------------------------

"PandocHiLink pandocNormalBlock
exe "hi! pandocTitleBlock"               .s:fg_blue_normal   .s:bg_none   .s:fmt_none
exe "hi! pandocTitleBlockTitle"          .s:fg_blue_normal   .s:bg_none   .s:fmt_bold
exe "hi! pandocTitleComment"             .s:fg_blue_normal   .s:bg_none   .s:fmt_bold
exe "hi! pandocComment"                  .s:fg_green_bright .s:bg_none   .s:fmt_ital
exe "hi! pandocVerbatimBlock"            .s:fg_yellow_normal .s:bg_none   .s:fmt_none
hi! link pandocVerbatimBlockDeep         pandocVerbatimBlock
hi! link pandocCodeBlock                 pandocVerbatimBlock
hi! link pandocCodeBlockDelim            pandocVerbatimBlock
exe "hi! pandocBlockQuote"               .s:fg_blue_normal   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader1"        .s:fg_blue_normal   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader2"        .s:fg_cyan_normal   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader3"        .s:fg_yellow_normal .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader4"        .s:fg_red_normal    .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader5"        .s:fg_blue_bright  .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader6"        .s:fg_green_bright .s:bg_none   .s:fmt_none
exe "hi! pandocListMarker"               .s:fg_magenta_normal.s:bg_none   .s:fmt_none
exe "hi! pandocListReference"            .s:fg_magenta_normal.s:bg_none   .s:fmt_undr

" Definitions
" ---------------------------------------------------------------------
let s:fg_pdef = s:fg_magenta_bright
exe "hi! pandocDefinitionBlock"              .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocDefinitionTerm"               .s:fg_pdef  .s:bg_none  .s:fmt_stnd
exe "hi! pandocDefinitionIndctr"             .s:fg_pdef  .s:bg_none  .s:fmt_bold
exe "hi! pandocEmphasisDefinition"           .s:fg_pdef  .s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNestedDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNestedDefinition"   .s:fg_pdef.s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisDefinition" .s:fg_pdef.s:bg_none.s:fmt_bldi
exe "hi! pandocStrikeoutDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_revr
exe "hi! pandocVerbatimInlineDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocSuperscriptDefinition"        .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocSubscriptDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_none

" Tables
" ---------------------------------------------------------------------
let s:fg_ptable = s:fg_blue_normal
exe "hi! pandocTable"                        .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocTableStructure"               .s:fg_ptable.s:bg_none  .s:fmt_none
hi! link pandocTableStructureTop             pandocTableStructre
hi! link pandocTableStructureEnd             pandocTableStructre
exe "hi! pandocTableZebraLight"              .s:fg_ptable.s:bg_black_bright.s:fmt_none
exe "hi! pandocTableZebraDark"               .s:fg_ptable.s:bg_black_normal.s:fmt_none
exe "hi! pandocEmphasisTable"                .s:fg_ptable.s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNestedTable"          .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisTable"          .s:fg_ptable.s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNestedTable"    .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisTable"  .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrikeoutTable"               .s:fg_ptable.s:bg_none  .s:fmt_revr
exe "hi! pandocVerbatimInlineTable"          .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocSuperscriptTable"             .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocSubscriptTable"               .s:fg_ptable.s:bg_none  .s:fmt_none

" Headings
" ---------------------------------------------------------------------
let s:fg_phead = s:fg_red_bright
exe "hi! pandocHeading"                      .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocHeadingMarker"                .s:fg_yellow_normal.s:bg_none.s:fmt_bold
exe "hi! pandocEmphasisHeading"              .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocEmphasisNestedHeading"        .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocStrongEmphasisNestedHeading"  .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisHeading".s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrikeoutHeading"             .s:fg_phead .s:bg_none.s:fmt_revr
exe "hi! pandocVerbatimInlineHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocSuperscriptHeading"           .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocSubscriptHeading"             .s:fg_phead .s:bg_none.s:fmt_bold

" Links
" ---------------------------------------------------------------------
exe "hi! pandocLinkDelim"                .s:fg_green_bright .s:bg_none   .s:fmt_none
exe "hi! pandocLinkLabel"                .s:fg_blue_normal   .s:bg_none   .s:fmt_undr
exe "hi! pandocLinkText"                 .s:fg_blue_normal   .s:bg_none   .s:fmt_undb
exe "hi! pandocLinkURL"                  .s:fg_yellow_bright .s:bg_none   .s:fmt_undr
exe "hi! pandocLinkTitle"                .s:fg_yellow_bright .s:bg_none   .s:fmt_undi
exe "hi! pandocLinkTitleDelim"           .s:fg_green_bright .s:bg_none   .s:fmt_undi   .s:sp_yellow_bright
exe "hi! pandocLinkDefinition"           .s:fg_cyan_normal   .s:bg_none   .s:fmt_undr   .s:sp_yellow_bright
exe "hi! pandocLinkDefinitionID"         .s:fg_blue_normal   .s:bg_none   .s:fmt_bold
exe "hi! pandocImageCaption"             .s:fg_magenta_bright .s:bg_none   .s:fmt_undb
exe "hi! pandocFootnoteLink"             .s:fg_green_normal  .s:bg_none   .s:fmt_undr
exe "hi! pandocFootnoteDefLink"          .s:fg_green_normal  .s:bg_none   .s:fmt_bold
exe "hi! pandocFootnoteInline"           .s:fg_green_normal  .s:bg_none   .s:fmt_undb
exe "hi! pandocFootnote"                 .s:fg_green_normal  .s:bg_none   .s:fmt_none
exe "hi! pandocCitationDelim"            .s:fg_magenta_normal.s:bg_none   .s:fmt_none
exe "hi! pandocCitation"                 .s:fg_magenta_normal.s:bg_none   .s:fmt_none
exe "hi! pandocCitationID"               .s:fg_magenta_normal.s:bg_none   .s:fmt_undr
exe "hi! pandocCitationRef"              .s:fg_magenta_normal.s:bg_none   .s:fmt_none

" Main Styles
" ---------------------------------------------------------------------
exe "hi! pandocStyleDelim"               .s:fg_green_bright .s:bg_none  .s:fmt_none
exe "hi! pandocEmphasis"                 .s:fg_blue_bright  .s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNested"           .s:fg_blue_bright  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasis"           .s:fg_blue_bright  .s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNested"     .s:fg_blue_bright  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasis"   .s:fg_blue_bright  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrikeout"                .s:fg_green_bright .s:bg_none  .s:fmt_revr
exe "hi! pandocVerbatimInline"           .s:fg_yellow_normal .s:bg_none  .s:fmt_none
exe "hi! pandocSuperscript"              .s:fg_magenta_bright .s:bg_none  .s:fmt_none
exe "hi! pandocSubscript"                .s:fg_magenta_bright .s:bg_none  .s:fmt_none

exe "hi! pandocRule"                     .s:fg_blue_normal   .s:bg_none  .s:fmt_bold
exe "hi! pandocRuleLine"                 .s:fg_blue_normal   .s:bg_none  .s:fmt_bold
exe "hi! pandocEscapePair"               .s:fg_red_normal    .s:bg_none  .s:fmt_bold
exe "hi! pandocCitationRef"              .s:fg_magenta_normal.s:bg_none   .s:fmt_none
exe "hi! pandocNonBreakingSpace"         . s:fg_red_normal   .s:bg_none  .s:fmt_revr
hi! link pandocEscapedCharacter          pandocEscapePair
hi! link pandocLineBreak                 pandocEscapePair

" Embedded Code
" ---------------------------------------------------------------------
exe "hi! pandocMetadataDelim"            .s:fg_green_bright .s:bg_none   .s:fmt_none
exe "hi! pandocMetadata"                 .s:fg_blue_normal   .s:bg_none   .s:fmt_none
exe "hi! pandocMetadataKey"              .s:fg_blue_normal   .s:bg_none   .s:fmt_none
exe "hi! pandocMetadata"                 .s:fg_blue_normal   .s:bg_none   .s:fmt_bold
hi! link pandocMetadataTitle             pandocMetadata

"}}}
" Utility autocommand "{{{
" ---------------------------------------------------------------------
" In cases where Material is initialized inside a terminal vim session and 
" then transferred_normal to a gui session via the command `:gui`, the gui vim process 
" does not re-read the colorscheme (or .vimrc for that matter) so any `has_gui` 
" related code that sets gui specific values isn't executed.
"
" Currently, Material sets only the cterm or gui values for the colorscheme 
" depending on gui or terminal mode. It's possible that, if the following 
" autocommand method is deemed excessively poor form, that approach will be 
" used again and the autocommand below will be dropped.
"
" However it seems relatively benign in this case to include the autocommand 
" here. It fires only in cases where vim is transferring from terminal to gui 
" mode (detected with the script scope s:vmode variable). It also allows for 
" other potential terminal customizations that might make gui mode suboptimal.
"
autocmd GUIEnter * if (s:vmode != "gui") | exe "colorscheme " . g:colors_name | endif
"}}}
" Highlight Trailing Space {{{
" Experimental: Different highlight when on cursorline
function! s:MaterialHiTrail()
    if g:material_hitrail==0
        hi! clear materialTrailingSpace
    else
        syn match materialTrailingSpace "\s*$"
        exe "hi! materialTrailingSpace " .s:fmt_undr .s:fg_red_normal .s:bg_none .s:sp_red_normal
    endif
endfunction  
augroup MaterialHiTrail
    autocmd!
    if g:material_hitrail==1
        autocmd! Syntax * call s:MaterialHiTrail()
        autocmd! ColorScheme * if g:colors_name == "material" | call s:MaterialHiTrail() | else | augroup! s:MaterialHiTrail | endif
    endif
augroup END
" }}}
" Menus "{{{
" ---------------------------------------------------------------------
" Turn off Material menu by including the following assignment in your .vimrc:
"
"    let g:material_menu=0

function! s:MaterialOptions()
    new "new buffer
    setf vim "vim filetype
    let failed = append(0, s:defaults_list)
    let failed = append(0, s:colorscheme_list)
    let failed = append(0, s:options_list)
    let failed = append(0, s:lazycat_list)
    0 "jump back to the top
endfunction
if !exists(":MaterialOptions")
    command MaterialOptions :call s:MaterialOptions()
endif

function! MaterialMenu()
    if exists("g:loaded_material_menu")
        try
            silent! aunmenu Material
        endtry
    endif
    let g:loaded_material_menu = 1

    if g:colors_name == "material" && g:material_menu != 0

        amenu &Material.&Contrast.&Low\ Contrast        :let g:material_contrast="low"       \| colorscheme material<CR>
        amenu &Material.&Contrast.&Normal\ Contrast     :let g:material_contrast="normal"    \| colorscheme material<CR>
        amenu &Material.&Contrast.&High\ Contrast       :let g:material_contrast="high"      \| colorscheme material<CR>
        an    &Material.&Contrast.-sep-                 <Nop>
        amenu &Material.&Contrast.&Help:\ Contrast      :help 'material_contrast'<CR>

        amenu &Material.&Visibility.&Low\ Visibility    :let g:material_visibility="low"     \| colorscheme material<CR>
        amenu &Material.&Visibility.&Normal\ Visibility :let g:material_visibility="normal"  \| colorscheme material<CR>
        amenu &Material.&Visibility.&High\ Visibility   :let g:material_visibility="high"    \| colorscheme material<CR>
        an    &Material.&Visibility.-sep-                 <Nop>
        amenu &Material.&Visibility.&Help:\ Visibility    :help 'material_visibility'<CR>

        amenu &Material.&Background.&Toggle\ Background :ToggleBG<CR>
        amenu &Material.&Background.&Dark\ Background   :set background=dark  \| colorscheme material<CR>
        amenu &Material.&Background.&Light\ Background  :set background=light \| colorscheme material<CR>
        an    &Material.&Background.-sep-               <Nop>
        amenu &Material.&Background.&Help:\ ToggleBG     :help togglebg<CR>

        if g:material_bold==0 | let l:boldswitch="On" | else | let l:boldswitch="Off" | endif
        exe "amenu &Material.&Styling.&Turn\\ Bold\\ ".l:boldswitch." :let g:material_bold=(abs(g:material_bold-1)) \\| colorscheme material<CR>"
        if g:material_italic==0 | let l:italicswitch="On" | else | let l:italicswitch="Off" | endif
        exe "amenu &Material.&Styling.&Turn\\ Italic\\ ".l:italicswitch." :let g:material_italic=(abs(g:material_italic-1)) \\| colorscheme material<CR>"
        if g:material_underline==0 | let l:underlineswitch="On" | else | let l:underlineswitch="Off" | endif
        exe "amenu &Material.&Styling.&Turn\\ Underline\\ ".l:underlineswitch." :let g:material_underline=(abs(g:material_underline-1)) \\| colorscheme material<CR>"

        amenu &Material.&Diff\ Mode.&Low\ Diff\ Mode    :let g:material_diffmode="low"     \| colorscheme material<CR>
        amenu &Material.&Diff\ Mode.&Normal\ Diff\ Mode :let g:material_diffmode="normal"  \| colorscheme material<CR>
        amenu &Material.&Diff\ Mode.&High\ Diff\ Mode   :let g:material_diffmode="high"    \| colorscheme material<CR>

        if g:material_hitrail==0 | let l:hitrailswitch="On" | else | let l:hitrailswitch="Off" | endif
        exe "amenu &Material.&Experimental.&Turn\\ Highlight\\ Trailing\\ Spaces\\ ".l:hitrailswitch." :let g:material_hitrail=(abs(g:material_hitrail-1)) \\| colorscheme material<CR>"
        an    &Material.&Experimental.-sep-               <Nop>
        amenu &Material.&Experimental.&Help:\ HiTrail    :help 'material_hitrail'<CR>

        an    &Material.-sep1-                          <Nop>

        amenu &Material.&Autogenerate\ options          :MaterialOptions<CR>

        an    &Material.-sep2-                          <Nop>

        amenu &Material.&Help.&Material\ Help          :help material<CR>
        amenu &Material.&Help.&Toggle\ Background\ Help :help togglebg<CR>
        amenu &Material.&Help.&Removing\ This\ Menu     :help material-menu<CR>

        an 9999.77 &Help.&Material\ Colorscheme         :help material<CR>
        an 9999.78 &Help.&Toggle\ Background             :help togglebg<CR>
        an 9999.79 &Help.-sep3-                          <Nop>

    endif
endfunction

autocmd ColorScheme * if g:colors_name != "material" | silent! aunmenu Material | else | call MaterialMenu() | endif

"}}}
" License "{{{
" ---------------------------------------------------------------------
"
" Copyright (c) 2011 Ethan Schoonover
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"
" vim:foldmethod=marker:foldlevel=0
"}}}
