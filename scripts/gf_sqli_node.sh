cat patterns/sqli.json > ~/.gf/sqli.json && cat output/final_urls.txt| gf sqli | tee output/gf_txt/sqli_vuln.txt; while read -r line; do echo "[sqli] ${line}"; done < output/gf_txt/sqli_vuln.txt > finaloutput/sqli_urls.txt