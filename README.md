# Take Home

## Architecture Diagram

![](docs/architecture.darw.io.drawio.png)

## OpenVPN

### Routes

```bash
push "route 169.254.169.254 255.255.255.255"
push "route 10.0.11.0 255.255.255.0"
push "route 10.0.12.0 255.255.255.0"
push "route 172.18.0.0 255.255.255.240"
```