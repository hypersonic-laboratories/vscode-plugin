/* eslint-disable @typescript-eslint/naming-convention */

export default {
    "pattern": "**/Config.toml",
    "definition": {
        "server": {
          "name": "server name",
          "description": "server description (max 127 characters)",
          "max_players": "max player in the server",
          "password": "leave it blank for no password",
          "ip": "server IP. we recommend leaving it 0.0.0.0 for default",
          "port": "Port of the server",
          "tick_rate": "server tick rate in milliseconds (dangerous! server will tick at each [tick_rate] ms, affecting both server and client performance. 33 ms means 30 ticks per second and is the default and recommended value)",
          "log_level": "log Level. (1) normal - (2) debug - (3) verbose"
        },
        "world": {
          "game_mode": "game-mode package to load (set the main game-mode package to load - you can load only one 'game-mode' package type at once)",
          "packages": "packages list (set the packages you want to load)",
          "assets": "asset packs list (this will additionally load the asset packs you define here)",
          "map": "default startup map",
          "banned_ids": "banned HELIX account IDs"
        }
      }
};