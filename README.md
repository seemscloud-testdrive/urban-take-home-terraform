# Take Home

## Architecture

### Diagram

![](docs/architecture.darw.io.drawio.png)

### Networks

```bash
10.0.11.0 255.255.255.0
10.0.12.0 255.255.255.0
```

### Cluster

#### Authorized networks

```bash
172.18.0.0 255.255.255.240 (172.18.0.0/28)
```

#### Cluster CIDR

````bash
10.52.0.0/14
````

#### Service CIDR

````bash
10.42.0.0/18
````