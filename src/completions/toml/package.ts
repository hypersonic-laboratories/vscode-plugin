/* eslint-disable @typescript-eslint/naming-convention */

export default {
    "pattern": "**/Package.toml",
    "definition": {
        "meta": {
            "title": "friendly name",
            "author": "contributors",
            "version": "version"
          },
          "game_mode": {
            "force_no_map_package": "whether to force the custom map package to do not load",
            "auto_cleanup": "auto destroy all entities spawned by this package when it unloads",
            "load_level_entities": "whether to load all level entities on the client - only enable it if your package needs to use level static meshes entities",
            "compatibility_version": "the game version (major.minor) at the time this package was created, for granting compatibility between breaking changes",
            "packages_requirements": "packages requirements",
            "assets_requirements": "asset packs requirements",
            "compatible_maps": "compatible maps - maps to be highlighted when starting a new game through the main menu"
          }
    }
};