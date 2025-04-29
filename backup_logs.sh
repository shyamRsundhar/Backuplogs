#!/bin/bash

# Directory containing logs
LOG_DIR="/var/log"

# Backup destination
BACKUP_DIR="/home/osboxes/backups"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Name of backup file (e.g., logs-2025-04-29.tar.gz)
BACKUP_FILE="$BACKUP_DIR/logs-$(date +%Y-%m-%d).tar.gz"

# Archive and compress the log files
tar -czf "$BACKUP_FILE" "$LOG_DIR"

echo "Backup completed: $BACKUP_FILE"
