SERVICE_NAME="chezmoi-pull-startup"
SERVICE_DESCRIPTION="synchronize dotfiles with remote on every startup"
SERVICE_COMMAND="chezmoi-update && chezmoi-apply"

mkdir -p ~/.config/systemd/user
cat <<-EOF > ~/.config/systemd/user/$SERVICE_NAME.service

[Unit]
Description=$SERVICE_DESCRIPTION
After=network.target

[Service]
# The absolute path to your script or executable
ExecStart=$SERVICE_COMMAND

# Automatically restart if it crashes
Restart=on-failure

[Install]
# This tells systemd to start it when you log in
WantedBy=default.target

EOF

systemctl --user enable --now $SERVICE_NAME.service
