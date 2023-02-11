# Latex Portfolio Report Template

## About
I wanted to have a template for a portfolio of work combined into a book form... So I made this. 

## Use

1. Edit variables file for your needs
2. Edit Title file for your needs
3. Edit Terms file for your needs
4. Edit Report to comment out Examples include
5. Edit Project 1 file with your project
6. Add More project files and include them in Report file as needed
7. Make the PDF
   1. I use Docker with the command `docker run --rm -it -v ${PWD}:/workdir texlive/texlive bash --login /workdir/Helpers/make.sh Report`
   2. You can also use the make scripts if you have latex installed locally `make.sh Report` (with the script file extension that makes sense for your OS). 

## Notes

* Most examples in here came from elsewhere. If you use this in anything formal make sure to find those and give them credit. 
* You might need to make sure the correct line ending is used on the scripts because sometimes the LF becomes CRLF without warning.
* Some older versions of Latex and some OS versions need some of the commands in the make script to have the .tex in their file arguments while others do not. You may need to adjust the script accordingly. 
* TODO: Someday figure out which packages I loaded but no longer needed so they can be removed.
* TODO: Update SF298 package for new version of form and to allow def of fields after printing form page (+ building up author and keywords from multiple parts/chapters)

