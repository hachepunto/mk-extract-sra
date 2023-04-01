<config.mk

results/%.fastq: data/%.sra
	set -x
	mkdir -p `dirname $target`
	touch "results/"$stem".build"
	fastq-dump \
		--split-3 \
		$prereq \
		-O results/ \
	&& rm "results/"$stem".build"