# What is the title of your book?
$title = "Glorious Book of Knowledge"

# Pre-generate, to get a lot of the general stuff out of the way
Write-Output "Generating PDF"
xelatex.exe -halt-on-error -interaction=batchmode -no-pdf "$title.tex"

# Open file if building succeeded
if ($?) {
  # build a second time to make sure images and TOC are correct
  xelatex.exe -halt-on-error -interaction=batchmode -output-driver='xdvipdfmx -z3' "$title.tex"
  Write-Output "Presenting..."
  & ".\$title.pdf"
} else {
  Write-Output "Build failed for some reason.  Check '$title.log' for more information"
}

