Current version is 0.11.

== Installing the bundle ==

Download the package from the address given at the bottom of this readme. Double click on the file to mount the disk image and then just double click the 'ConTeXt.tmbundle' file.

== Features ==

* Help on current word    (press ^h)
* Inserting environments  (type 'env' + press tab)
* setting previwer        (the variable PDF_VIEWER, the default is 'Preview'. You can try anything that you can use as an argument for 'open')
* running texexec         (cmd-R, there are hyperlinks to the .log and to the .pdf file, and in case of an error, a hyperlink to the source file)
* purge                   (ctrl-alt-backsapce)
* check                   (ctrl-shift-v)
* view                    (ctrl-alt-cmd-o)
* tab on commands         (exaple: insert \color and press tab, you can tab through the arguments.)
* command completion      (type in '\fill' and press the escape key multiple times)
* bold/italic font        (type cmd-i or cmd-b)
* sectioning commands     (type sec or sub and press tab)
* metafun aware in \startuniqueMPgraphic and alike
* drag/drop image to the source (creates \externalfigure[...])
* wrap selection in \start...\stop (ctrl-shift-w)
* xetex support           (set CTX_ENGINE to 'xetex')
* luatex support          (also on cmd-R, no hyperlinks in the output yet)

== CTX_ENGINE ==
You can set the variable CTX_ENGINE in Textmate's preference window (Textmate menu -> preferences), click on 'Advanced', select the tab 'shell variables' and add the variable CTX_ENGINE by using
the '+' button at the bottom left. Double Click on 'MY_VARIABLE' and replace it with 'CTX_ENGINE'. Replace 'some value' with 'xetex' for xetex or 'pdftex' for pdftex. For project dependent variables see [http://macromates.com/textmate/manual/environment_variables#project_dependent_variables the textmate manual].

== mkiv suppport ==
You can use ConTeXt mkiv with Textmate. Just add the directory with the luatex binary to your PATH by editing the file .bash_profile (mate ~/.bash_profile in the terminal window) in your home directory and add a line like this:
  PATH=$PATH:/Users/patrick/TeX/context/distribution/tex/texmf-osx-intel/bin
  export PATH
Make sure you change the directory above according to your settings. If unsure type "which context" to find the directory.


== Future versions ==

* Documentation enhancement
* multi-file support
* help on current word should check if the command is actually known (MM)

== Known limitations/bugs ==


Please contact me at patrick <at> gundla.ch for suggestions/comments/bug reports/...

== Acknowledgments ==

The metafun grammar is taken from Charilaos Skiadas' metapost bundle and used with permission. Thanks for that!


== Resources ==

Homepage:   http://wiki.contextgarden.net/ConTeXt_Bundle_for_TextMate<br/>
Download:   http://dl.contextgarden.net/support/<br/>
Sourcecode: http://github.com/pgundlach/context.tmbundle
Contact:    patrick <at> gundla.ch<br/>
License:    https://creativecommons.org/publicdomain/zero/1.0/deed.en
