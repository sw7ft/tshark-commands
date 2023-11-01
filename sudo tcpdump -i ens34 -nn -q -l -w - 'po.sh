sudo tcpdump -i ens34 -nn -q -l -w - 'port 80 or port 443' | tshark -r - -Y 'http.request or http.response' -V
sudo tcpdump -i ens34 -nn -q -l -w - | tshark -r - -Y 'http.request' -V