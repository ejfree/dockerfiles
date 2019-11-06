server {
    listen          80;
    server_name     wireshark.nubevalabs.com;
    location / {
        proxy_pass  http://WiresharkELB-3a71ae790ad8a812.elb.us-east-1.amazonaws.com:3000/;
    }
}
