cat patterns/xss.json > ~/.gf/xss.json && cat output/final_urls.txt| gf xss | tee output/gf_txt/xss_vuln.txt; while read -r line; do echo "[XSS] ${line}"; done < output/gf_txt/xss_vuln.txt > finaloutput/xss_urls.txt