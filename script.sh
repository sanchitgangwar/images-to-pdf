SOURCE_PATH="./Images"
SNIPPETS_OUTPUT="./snippets.tex"

echo '' > $SNIPPETS_OUTPUT
for f in "${SOURCE_PATH}/*.jpg"; do
    printf '\includepdf[width=\\textwidth,height=\\textheight,keepaspectratio]{%s}\n' $f >> $SNIPPETS_OUTPUT
done

pdflatex output.tex
