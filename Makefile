all: Unihan cedict_1_0_ts_utf-8_mdbg.txt

Unihan.zip:
	curl -O ftp://ftp.unicode.org/Public/UNIDATA/Unihan.zip

Unihan: Unihan.zip
	unzip -d Unihan $<

cedict_1_0_ts_utf-8_mdbg.txt.gz:
	curl -O https://www.mdbg.net/chinese/export/cedict/cedict_1_0_ts_utf-8_mdbg.txt.gz

cedict_1_0_ts_utf-8_mdbg.txt: cedict_1_0_ts_utf-8_mdbg.txt.gz
	gunzip -k $<
