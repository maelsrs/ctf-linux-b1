import os
import random
from datetime import datetime, timedelta

# Define log categories and example templates
log_categories = {
    "system": [
        "[{timestamp}] INFO: System boot initiated.",
        "[{timestamp}] WARNING: Disk usage at {value}%.",
        "[{timestamp}] ERROR: Failed to load module '{module}'.",
        "[{timestamp}] INFO: Backup service started.",
        "[{timestamp}] INFO: User '{user}' logged in from {ip}.",
        "[{timestamp}] CRITICAL: Kernel panic - not syncing: Attempted to kill init!"
    ],
    "application": [
        "[{timestamp}] DEBUG: Received API request: {method} {endpoint}",
        "[{timestamp}] INFO: User profile retrieved successfully (user_id: {user_id}).",
        "[{timestamp}] ERROR: Database connection timeout (server: {server}).",
        "[{timestamp}] WARNING: Failed email retries exceeded limit (recipient: {email}).",
        "[{timestamp}] INFO: Scheduled task '{task}' executed successfully.",
        "[{timestamp}] DEBUG: Retrying database connection (attempt {attempt}/3)."
    ],
    "network": [
        "[{timestamp}] INFO: New connection established from {ip}:{port}.",
        "[{timestamp}] WARNING: Packet loss detected on interface {interface} ({value}%).",
        "[{timestamp}] ERROR: Firewall rule violation detected (source IP: {ip}).",
        "[{timestamp}] INFO: Connection closed by remote host ({ip}).",
        "[{timestamp}] CRITICAL: Network interface {interface} down.",
        "[{timestamp}] DEBUG: Ping response from {ip} (latency: {value}ms)."
    ]
}

# Randomized values for logs
values = {
    "value": lambda: random.randint(1, 100),
    "module": lambda: random.choice(["network_driver_v4", "disk_manager", "graphics_adapter"]),
    "user": lambda: random.choice(["admin", "guest", "service_user"]),
    "ip": lambda: ".".join(map(str, (random.randint(0, 255) for _ in range(4)))),
    "port": lambda: random.randint(1024, 65535),
    "method": lambda: random.choice(["GET", "POST", "PUT", "DELETE"]),
    "endpoint": lambda: random.choice(["/user/profile", "/data/sync", "/auth/login", "/files/upload"]),
    "user_id": lambda: random.randint(1000, 9999),
    "server": lambda: random.choice(["db01.internal", "cache01.internal", "db02.internal"]),
    "email": lambda: f"user{random.randint(1, 999)}@example.com",
    "task": lambda: random.choice(["backup", "cleanup", "sync"]),
    "attempt": lambda: random.randint(1, 3),
    "interface": lambda: random.choice(["eth0", "wlan0", "lo"])
}

# Generate a timestamp within a recent range
def random_timestamp():
    start_date = datetime(2014, 3, 10)
    random_date = start_date + timedelta(seconds=random.randint(0, 7 * 24 * 60 * 60))
    return random_date.strftime("%Y-%m-%d %H:%M:%S")

# Generate random logs
def generate_logs(category, count):
    logs = []
    templates = log_categories[category]
    for _ in range(count):
        template = random.choice(templates)
        log = template.format(
            timestamp=random_timestamp(),
            **{key: generator() for key, generator in values.items()}
        )
        logs.append(log)
    return logs

# Generate files with logs
output_dir = "fake_logs"
os.makedirs(output_dir, exist_ok=True)

file_count = 50  # Number of files per category
logs_per_file = 1000  # Number of logs per file

for category in log_categories:
    for i in range(file_count):
        filename = f"{category}_log_{i+1:03d}.log"
        filepath = os.path.join(output_dir, filename)
        with open(filepath, "w") as f:
            logs = generate_logs(category, logs_per_file)
            f.write("\n".join(logs))

output_dir
