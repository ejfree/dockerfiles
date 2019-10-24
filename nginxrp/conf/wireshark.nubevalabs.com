server {
    listen          80;
    server_name     wireshark.nubevalabs.com;
    location / {
        proxy_pass  http://NtophELB-6b0bcea5642c4d3d.elb.us-east-2.amazonaws.com:3000/;
    }
}
