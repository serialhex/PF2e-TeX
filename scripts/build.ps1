

# The following three variables you need to edit.  Do it, or things won't work.
# The first one is probably going to be the most edited, as you're going to add
# files and remove other files and reorder things, etc...

# Put the files in the order you want them
$files_str = @( "Input1.md",
                "Input 2.md",
                "Chapter 4.md",
                "Rewrite of chapter 3.md",
                "Beginning.md",
                "The Llama has a fork.md"
                )

# Where are these files located?
$dir = "chapters"

# What is the title of your book?
$title = "Output"

################################################################################
## You shouldn't have to edit anything below this line.
################################################################################

$files = @()
foreach ($file in $files_str) {
  $files += Get-Item ".\$dir\$file"
}

# set up output dir
$bin = "$pwd\bin"
Write-Output $bin
if (Get-Item $bin) {
  Write-Output "Removing $bin"
  Remove-Item $bin -Recurse
}
mkdir $bin

Set-Location $bin

Write-Output "Using Pandoc"
pandoc --template tmpl.latex -o "$title.tex" $files

Write-Output "Using xelatex"
xelatex -halt-on-error "$title.tex"

