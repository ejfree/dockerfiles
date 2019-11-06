server {
    listen          80;
    server_name     wireshark.nubevalabs.com;
    location / {
        proxy_pass  http://WiresharkELB-f713ef4221f6fba9.elb.us-east-1.amazonaws.com:3000/;
    }
}
