# tesla-wall-connector

Metrics from Tesla Wall Connector using Prometheus and Grafana

- [tesla-wall-connector](#tesla-wall-connector)
  - [Configure](#configure)
  - [Run](#run)
  - [Docker URL](#docker-url)
  - [Makefile](#makefile)
  - [Tesla Charger Gen3 Api](#tesla-charger-gen3-api)

## Configure

src/configs/prometheus.yml

Lines:
- http://10.0.0.111/api/1/lifetime
- http://10.0.0.111/api/1/vitals
- http://10.0.0.111/api/1/wifi_status

Replace **10.0.0.111** with your **tesla wall charger IP**

## Run

```bash
make pi4.run
```

## Docker URL

Prometheus
http://localhost:9090/

Grafana
http://localhost:3000

username: tesla
password: tesla

## Makefile

```bash
make pi4.run
```

```bash
make pi4.pull
```

```bash
make pi4.stop
```

```bash
make pi4.restart
```

```bash
make pi4.update
```

```bash
make pi4.logs
```

```bash
make pi4.cleanup
```

## Tesla Charger Gen3 Api

- http://IP_TESLA_CHARGER/api/1/lifetime

```json
{
  "contactor_cycles": 32,
  "contactor_cycles_loaded": 0,
  "alert_count": 125,
  "thermal_foldbacks": 0,
  "avg_startup_temp": 29.8,
  "charge_starts": 32,
  "energy_wh": 2879,
  "connector_cycles": 6,
  "uptime_s": 128106,
  "charging_time_s": 13802
}
```

- http://IP_TESLA_CHARGER/api/1/vitals

```json
{
  "contactor_closed": false,
  "vehicle_connected": true,
  "session_s": 16315,
  "grid_v": 237.3,
  "grid_hz": 49.994,
  "vehicle_current_a": 0.3,
  "currentA_a": 0,
  "currentB_a": 0,
  "currentC_a": 0.3,
  "currentN_a": 0,
  "voltageA_v": 1.2,
  "voltageB_v": 3.4,
  "voltageC_v": 0,
  "relay_coil_v": 11.9,
  "pcba_temp_c": 25.2,
  "handle_temp_c": 21,
  "mcu_temp_c": 34.3,
  "uptime_s": 110125,
  "input_thermopile_uv": -212,
  "prox_v": 0,
  "pilot_high_v": 8.7,
  "pilot_low_v": -11.6,
  "session_energy_wh": 1408,
  "config_status": 5,
  "evse_state": 4,
  "current_alerts": []
}
```

- http://IP_TESLA_CHARGER/api/1/wifi_status

```json
{
  "wifi_ssid": "xxx",
  "wifi_signal_strength": 54,
  "wifi_rssi": -63,
  "wifi_snr": 34,
  "wifi_connected": true,
  "wifi_infra_ip": "10.0.0.111",
  "internet": true,
  "wifi_mac": "xx:xx:xx:xx:xx:xx"
}
```

- http://IP_TESLA_CHARGER/api/1/version

```json
{
  "firmware_version": "23.24.3+gba52398ee0bc71",
  "part_number": "xxxxxxx-xx-x",
  "serial_number": "PGTxxxxxxxxxxx"
}
```
