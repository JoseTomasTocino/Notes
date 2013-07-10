engine ?= pdflatex	# Override on the command line

# The default builds the distribution uploaded to CTAN.
dist:		fullpdf clean

# Making this target includes the code listing
fullpdf	:	sty
		$(engine) schemata.dtx
		makeindex -s gglo.ist -o schemata.gls schemata.glo
		makeindex -s gind.ist -o schemata.ind schemata.idx
		$(engine) schemata.dtx
		$(engine) schemata.dtx

# This target omits the code listing.
pdf	:	sty
		$(engine) -draftmode "\AtBeginDocument{\OnlyDescription} \input schemata.dtx"
		makeindex -s gglo.ist -o schemata.gls schemata.glo
		makeindex -s gind.ist -o schemata.ind schemata.idx
		$(engine) "\AtBeginDocument{\OnlyDescription} \input schemata.dtx"
		$(engine) "\AtBeginDocument{\OnlyDescription} \input schemata.dtx"

# Build the package.
sty	:	schemata.dtx schemata.ins
		$(engine) schemata.ins

# Instead of using the shell to see if files exist, take advantage of rm.
clean	:
		rm -f schemata.aux
		rm -f schemata.glo
		rm -f schemata.gls
		rm -f schemata.idx
		rm -f schemata.ilg
		rm -f schemata.ind
		rm -f schemata.log
		rm -f schemata.out
		rm -f schemata.toc
		rm -f schemata.hd
		rm -f schemata.top
		rm -f texput.*

# Remove all but the barest source files.
clobber	:	clean
		rm -f schemata.dvi
		rm -f schemata.pdf
		rm -f schemata.sty
		touch schemata.*


