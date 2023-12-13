# url-enumration
Enumrate Urls that could be vulnerable to SQLi, Xss, Redirection, SSRF, and much more, and categorize them !!

## Installation via docker
make sure that you have installed docker 

```console
apt install docker.io
```

start docker service 
```console
systemctl start docker
```

clone the repository
```console
git clone https://github.com/thisshehab/url-enumration.git
cd url-enumration
```
build the image 
```console
docker build -t urlenumration .
```
## Usage
replace the file yourinput.txt with yours one, make sure that the file format like this 
<br>
http://example.com <br>
https://example.com <br>
...

```console
sudo docker run -v ./yourinput.txt:/app/domains.txt -it urlenumration
```
