sudo apt install nmap
echo "Installed nmap"
sleep 0.5
sudo apt install whatweb
echo "Installed whatweb"
sleep 0.5
sudo apt install gobuster
echo "Installed gobuster"
sleep 0.5
./install-go.sh
echo "Installed golang"
sleep 0.5
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo mv ~/go/bin/subfinder /usr/bin
echo "Installed subfinder"
sleep 0.5
go install github.com/projectdiscovery/alterx/cmd/alterx@latest
sudo mv ~/go/bin/alterx /usr/bin
echo "Installed Alterx"
sleep 0.5
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
sudo mv ~/go/bin/nuclei /usr/bin
echo "Installed Nuclei"
sleep 0.5
go install github.com/projectdiscovery/cvemap/cmd/cvemap@latest
sudo mv ~/go/bin/cvemap /usr/bin
cvemap -auth
echo "Installed cvemap"
sleep 0.5
