#!/bin/bash

LOG_FILE="/opt/devops-project/scripts/install_log_ZhantemirB.log"

echo "=== DevOps tools installation started: $(date) ===" | tee -a "$LOG_FILE"

echo "Updating system..." | tee -a "$LOG_FILE"
sudo apt update && sudo apt upgrade -y | tee -a "$LOG_FILE"

echo "Installing required packages..." | tee -a "$LOG_FILE"
sudo apt install -y openjdk-17-jdk gradle git | tee -a "$LOG_FILE"

echo "Verifying installed versions..." | tee -a "$LOG_FILE"

echo "--- Java version ---" | tee -a "$LOG_FILE"
java -version 2>&1 | tee -a "$LOG_FILE"

echo "--- Gradle version ---" | tee -a "$LOG_FILE"
gradle -v | tee -a "$LOG_FILE"

echo "--- Git version ---" | tee -a "$LOG_FILE"
git --version | tee -a "$LOG_FILE"

echo "=== Installation completed: $(date) ===" | tee -a "$LOG_FILE"
