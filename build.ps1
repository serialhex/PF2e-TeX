# What is the title of your book?
$title = "PF2e-TeX Spellbook"

# Make sure build directory is there
$dir = "./build"
if (!(Test-Path -Path $dir)) { md $dir }
if (!(Test-Path -Path $dir/docs)) { md $dir/docs }

# Pre-generate, to get a lot of the general stuff out of the way
Write-Output "Generating PDF"
xelatex.exe -halt-on-error -output-directory build -recorder -interaction=batchmode -no-pdf "$title.tex"

# Open file if building succeeded
if ($?) {
  # build a second time to make sure images and TOC are correct
  xelatex.exe -halt-on-error -output-directory build -recorder -interaction=batchmode -output-driver='xdvipdfmx -z3' "$title.tex"
  Write-Output "Presenting..."
  & "$dir\$title.pdf"
} else {
  Write-Output "Build failed for some reason.  Check '$title.log' for more information"
}
