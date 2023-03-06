# Defines a variable the values of which are the documents each co-author has contributed to the project
CONTRIBUTIONS := preamble.txt litReview.txt approach.txt results.txt conclusion.txt ViEWSMapGridCell.png

# This rule builds our output file
project.html: $(CONTRIBUTIONS)
	cat $(CONTRIBUTIONS) > project.html

# Creates a simple way to get rid of the output file if we want to
clean:
	rm -f $(OUTPUT)
