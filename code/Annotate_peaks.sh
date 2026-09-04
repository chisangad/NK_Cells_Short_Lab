source ~/.bashrc
workdir=$(realpath $(dirname $0)|xargs -n1 dirname)

annotatePeaks.pl ${workdir}/output/NFCore_ATACseq/bwa/merged_library/macs2/narrow_peak/consensus/consensus_peaks.mLb.clN.bed  hg38 -cpu 6 > \
${workdir}/output/NFCore_ATACseq/bwa/merged_library/macs2/narrow_peak/consensus/consensus_peaks.mLb.clN.annotatePeaks2.txt
