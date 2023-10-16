## Welcome!

Copa is a CNCF project used to patch OS vulnerabilities in container images.

### Why? 
There is an increasing need for the ability to patch containers quickly without going upstream for a full rebuild. As the window between [vulnerability disclosure and active exploitation continues to narrow](https://www.bleepingcomputer.com/news/security/hackers-scan-for-vulnerabilities-within-15-minutes-of-disclosure/), there is a growing operational need to patch critical security vulnerabilities in container images so they can be quickly redeployed into production. The need is especially acute when those vulnerabilities are:
* inherited from base images several levels deep and waiting on updated releases to percolate through the supply chain is not an option
* found in 3rd party app images you don't maintain with update cadences that don't meet your security SLAs.

### Begin the lab to try out using Copa to patch a container image!