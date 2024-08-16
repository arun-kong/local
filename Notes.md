
* `Github:`

1: Create a rsa ket
2: Put public ket to github for passwordless ssh
3: Initi git and create origin, pull, push.

Commands:
- git config --global user.email "arun.gopakumar@konghq.com"
- git config --global user.name "arun"
- git commit -m "first commit"
- git branch
- git branch -M main
- git remote add origin https://github.com/arun-kong/local.git
- git pull origin main
- git push -u origin main
- git push -f origin main


- git remote remove origin



* `Check kong chart version Helm:`

- To get details of the Helm repositories configured and the versions of the charts available, we can use Helm commands. First, let's list the Helm repositories.
`helm repo list --output yaml`

- The Helm repository "kong" is listed. Now, let's fetch the details of the charts available in this repository along with their versions.
`helm search repo kong --versions --output yaml`


- Debug in logrotate
`logrotate -df /etc/logrotate.d/kong-enterprise-edition`


* Kubernates KIC

- To list all resources in Kubernetes with the label `app: httpbin-1`, you can use the `kubectl get all` command along with the `-l` flag to filter by label.
`kubectl get all -l app=httpbin-1`

- Login to docker desktop kubernates cluster

`kubectl debug node/<node-name> -it --image=busybox`

eg:
    `kubectl debug node/docker-desktop -it --image=busybox`

