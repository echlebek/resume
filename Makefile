.PHONY: eric

CC = xelatex
DIR = eric
RESUME_DIR = eric/resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

eric: $(foreach x, resume, $x.pdf)

resume.pdf: $(DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(DIR) $<

clean:
	rm -rf $(DIR)/*.pdf
