cat patterns/lfi.json > ~/.gf/lfi.json && cat output/final_urls.txt| gf lfi | tee output/gf_txt/lfi_vuln.txt; while read -r line; do echo "[lfi] ${line}"; done < output/gf_txt/lfi_vuln.txt > finaloutput/lfi_urls.txt