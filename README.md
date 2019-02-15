# docker-logs-to-splunk
Spawn docker containers and forward logs to a splunk instance

### Prerequisites
Make sure you have the following:
| Software | Download Link |
| ------ | ------ |
| Docker | https://www.docker.com/get-started |

### Steps to run:
Clone the repo
 ```
 $ git clone https://github.com/vaibhav-walia/docker-logs-to-splunk.git
 ```
 Cd into the cloned directory
 ```
 $ cd docker-logs-to-splunk
 ```
 Run buildAndRun.sh as follows
 ```
 $ sh buildAndRun.sh <#_fake_containers> <#_example_app_containers> <splunk_url:port> <splunk_token>
 ```
