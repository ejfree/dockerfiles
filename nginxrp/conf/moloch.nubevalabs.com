server {
    listen          80;
    server_name     moloch.nubevalabs.com;
    location / {
        proxy_pass  http://MolochELB-0fe8e8270e15c96c.elb.us-east-1.amazonaws.com:8005/;
    }
}
