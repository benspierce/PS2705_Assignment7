# Defines a variable the values of which are the documents each co-author has contributed to the project
CONTRIBUTIONS := preamble.txt litReview.txt approach.txt results.txt conclusion.txt ViEWSMapGridCell.png

# These rules build our output files
all: project.html project.pdf

project.html: $(CONTRIBUTIONS)
	cat $(CONTRIBUTIONS) | pandoc $(CONTRIBUTIONS) -s --mathjax -f markdown+tex_math_dollars -t html -o project.html

project.pdf: $(CONTRIBUTIONS)
	cat $(CONTRIBUTIONS) | $(CONTRIBUTIONS) pdf -o  project.pdf

# Creates a simple way to get rid of the output file if we want to
clean:
	rm -f $(OUTPUT)
