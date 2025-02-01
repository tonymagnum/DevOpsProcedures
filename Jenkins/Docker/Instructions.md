# Instructions

The following docker compose has 2 Containers
- Master Server
- Jenkins Agent

Master is built with Persistant Storage to avoid Data Loss

## Run
```bash
    docker compose up -d
```
Access on [localhost:8080](localhost:8080)

## Setup Agent

### Node Config
Select name as *vm-agent* matching the dockerfile `JENKINS_AGENT_NAME`\
Set `Type` as *permanent*

### Agent Config
- Set `Remote Root Dir` as */home/jenkins-agent*
- Set `Labels` as *docker* (optional)
- Set `Usage` as *Use this node as much as possible*
- Set `Launch method` as *Launch agent by connecting it to the master*

### Connect Agent
Go to the agent UI and click on the Agent\
Agent will be offline but 2 commands will be provided\
They will look similar to this and you will run them from your temrinal
```bash
    curl -sO http://localhost:8080/jnlpJars/agent.jar
    sudo java -jar agent.jar -url http://localhost:8080/ -secret <SECRET-PROVIDED> -name "vm-agent" -webSocket -workDir "/home/jenkins-agent"
```
These download the Agent Info in a Jar file and then use it to connect

### Pipeline Plugin
Manage Jenkins > Plugins > Avaliable Plugins\
Here search for `Pipeline` mark it and install