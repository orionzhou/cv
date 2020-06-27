all: cv pdf

cv: citation
	Rscript -e 'rmarkdown::render("index.Rmd")'

cv2:
	Rscript -e 'rmarkdown::render("index.Rmd")'

pdf:
	Rscript -e 'pagedown::chrome_print("index.html", "pz.pdf")'; \
	cp index.html /home/springer/zhoux379/git/orionzhou.github.io/cv/; \
	cp pz.pdf /home/springer/zhoux379/git/orionzhou.github.io/cv/

citation:
	#source /data/gitee/ygc-utilities/proxy.sh; \
	Rscript -e 'source("citation.R")'#; \
	#source /data/gitee/ygc-utilities/unproxy.sh

