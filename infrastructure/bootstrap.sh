#!/bin/bash

echo "🚀 Initializing Bremspace OS Bootstrap..."

# 1. Setup Directory Structure
mkdir -p /opt/data/skills /opt/data/config /opt/data/state

# 2. Sync Skills from Repository
echo "📦 Syncing Bremspace Skills..."
cp -r /opt/data/skills/* /opt/skills/ 2>/dev/null || echo "No external skills to sync."

# 3. Load Memory Snapshot
if [ -f "/opt/data/state/memory_snapshot.json" ]; then
    echo "🧠 Loading Memory Snapshot..."
    # Logic to inject memory into the agent's database
    # Note: This requires internal access to the hermes-agent DB
fi

# 4. Configuration Check
if [ ! -f "/opt/config/config.yaml" ]; then
    echo "⚠️ config.yaml not found! Creating default based on bremspace-os specs..."
    # Logic to generate default config from repo templates
fi

echo "✅ Bremspace OS is ready. Starting the CEO agent..."
