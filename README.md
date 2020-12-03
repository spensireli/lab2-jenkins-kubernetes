# Lab2 A Persistent Jenkins server deployed onto Kubernetes
This project will walk through how to deploy a Jenkins server that is persistent.

*Note this lab is not for production use.*

### Future Enhancements
- TLS for encryption in transit

### Lab configuration
Below you will find the specifications for the environment used to run this lab. I am confident the lab is able to run on much less hardware or even on a set of Raspberry Pi's.

#### Virtualization Environment
| Physical Server  | Hypervisor | Physical CPU | Physical Memory | Physical Storage |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| Dell R420  | ProxMox Virtual Environment 6.2-4 | 8  | 32G | 2TB RAID 5 |
| Dell R420  | ProxMox Virtual Environment 6.2-4 | 24  | 32G | 4TB RAID 5 |

#### Host Machines

| Hostname  | Operating System | vCPU | Memory | Storage |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| kubernetes-controller-1  | Ubuntu 20.04  | 4  | 8G | 100G |
| kubernetes-worker-1  | Ubuntu 20.04  | 2  | 4G  | 32G |
| kubernetes-worker-2  | Ubuntu 20.04  | 2  | 4G  | 32G |
| kubernetes-worker-3  | Ubuntu 20.04  | 2  | 4G  | 32G |
| nfs-server-1  | CentOS 7 | 4  | 4G  | 250G |

### Pre-requisites
- A Kubernetes cluster running v1.19.4.
  - This lab has 3 worker nodes with 4GiB memory and 2 vCPU's.
- Access to the Kubernetes cluster.
- Kubectl already configured for use.
- An already configured NFS server ready to use for persistent storage.

## Installation

#### Jenkins Server
