#!/bin/bash

# exemplo de bundle ID do serviço
# Example of a service bundle ID
SERVICE="com.anydesk.anydesk"
APP="/Applications/AnyDesk.app"
CONFIG_DIR="$HOME/Library/Application Support/AnyDesk"
TEMP_DIR="/tmp/anydesk_temp"

# ================================
# Função: Para o serviço e o app
# Function: For the service and the app
# ================================
stop_any() {
    echo "Parando serviço e aplicativo..."
    echo "Stopping service and application..."

    # Para o serviço se existir
    # If the service exists
    if launchctl list | grep -q "$SERVICE"; then
        sudo launchctl stop "$SERVICE"
        echo "Serviço parado."
        echo "Service suspended."
    else
        echo "Serviço não encontrado."
        echo "Service not found."
    fi

    # Mata o processo AnyDesk se estiver rodando
    # Kill the AnyDesk process if it is running
    pkill -f AnyDesk 2>/dev/null
}

# ================================
# Função: Inicia o aplicativo
# Function: Starts the application
# ================================
start_any() {
    echo "Iniciando AnyDesk..."
    echo "Launching AnyDesk..."

    if [ -d "$APP" ]; then
        open "$APP"
        echo "Aplicativo iniciado."
        echo "Application launched."
    else
        echo "Aplicativo não encontrado em $APP"
        echo "Application not found in $APP"
    fi
}

# ================================
# Salva e restaura configuração
# Save and restore settings
# ================================
backup_config() {
    mkdir -p "$TEMP_DIR"
    cp -R "$CONFIG_DIR/user.conf" "$TEMP_DIR/" 2>/dev/null
    echo "Configuração salva temporariamente."
    echo "Configurations saved temporarily."
}

restore_config() {
    cp -R "$TEMP_DIR/user.conf" "$CONFIG_DIR/" 2>/dev/null
    rm -rf "$TEMP_DIR"
    echo "Configuração restaurada."
    echo "Configurations restored."
}

# ================================
# Fluxo principal
# Main flow
# ================================
stop_any
backup_config

# Aqui você poderia limpar miniaturas ou outros arquivos temporários
# Delete thumbnails and other temporary files
rm -rf "$CONFIG_DIR/thumbnails"

start_any

# Exemplo didático de esperar algo em system.conf
# (loop seguro com timeout)
# Example of waiting for something in system.conf
# (safe loop with timeout)
TIMEOUT=30
COUNTER=0
while ! grep -q "ad.anynet.id=" "$CONFIG_DIR/system.conf" 2>/dev/null; do
    sleep 1
    COUNTER=$((COUNTER+1))
    if [ $COUNTER -ge $TIMEOUT ]; then
        echo "Timeout aguardando system.conf"
        echo "Timeout waiting for system.conf"
        break
    fi
done

stop_any
restore_config
start_any

echo "*********"
echo "Concluído."
echo "Completed."
