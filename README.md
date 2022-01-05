# config-files
My config files.

## openssl
* x509-extensions-ca.cnf
  * Used to create CA certificate (with `CA:TRUE`)
  * For `openssl req`: `-extensions v3_ca -config x509-extensions-ca.cnf`
  * For `openssl x509`: `-extensions v3_ca -extfile x509-extensions-ca.cnf`
