cat patterns/idor.json > ~/.gf/idor.json && cat output/final_urls.txt| gf idor | tee output/gf_txt/idor_vuln.txt; while read -r line; do echo "[idor] ${line}"; done < output/gf_txt/idor_vuln.txt > finaloutput/idor_urls.txt