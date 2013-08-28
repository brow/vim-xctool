vim-xctool
==========

[xctool] is the best way to build and test Cocoa projects outside of Xcode. **vim-xctool** makes xctool the default compiler for Objective-C files in Vim.

## Installation

0. Install [xctool] into your path.

        brew install xctool
       
1. Install **vim-xctool** as a Vim plugin. Assuming you're using [pathogen.vim]:

        cd ~/.vim/bundle
        git clone https://github.com/brow/vim-xctool.git
       
2. *Optional:* Add the following to your `.vimrc` to ensure all Objective-C sources are treated as such.

           au BufNewFile,BufRead *.h,*.m,*.pch set filetype=objc

## Project setup

Perform the following steps for each project you wish to build with xctool.

1. Navigate to the project root and check that you can run xctool successfully.

        xctool \
          -project MyProject.xcodeproj \
          -scheme MyProject

    If this is an iOS project, don't forget `-sdk iphonesimulator`.
       
2. Once you have arguments that work, put them into a file called `.xctool-args` with this format:

	   [
	     "-project", "MyProject.xcodeproj",
	     "-scheme", "MyProject",
	   ]

## Usage

    :make
    :make test
    :make clean
    :make archive
    " etc.

See `xctool -help` for the full list of commands that can be appended to `:make`.

[xctool]: https://github.com/facebook/xctool
[Homebrew]: http://brew.sh/
[pathogen.vim]: https://github.com/tpope/vim-pathogen 
