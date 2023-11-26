# perm-sync

| **< Work in progress >** |
| - |

Save and restore linux user permissions.

- Control, detect and recover from unintended user permissions changes
- Restore user permissions when recovering backup files from sources not supporting them.

Additionally, support backup of local files into external storages

- Define files to backup
- Generate commands for different tools and targets (rsync, cloud, NAS)

## Motivation

Existing tools like `getfacl` and `setfacl` were not fitting for my current needs.

## WIP

- TODO: Scan filesystem and gather all possible information (see [getfacl](https://linux.die.net/man/1/getfacl))
- TODO: investigate if supporting mac is also possible
- TODO: Create permissions backup file using a configuration
- TODO: Verify permissions backup against local filesystem
  - TODO: Detect and report file deletions in FS
  - TODO: Detect and report file modifications in FS
  - TODO: Detect and report new entries for backup
- TODO: restore create permissions backup into local file system
- TODO: enable user to define root folder to backup
- TODO: whitelist files and folders inside root folder
- TODO: blacklist files and folders inside root folder
- TODO: define targets for backups (Method/type and URI/URL)
- TODO: Create/Run backup commands for different backup targets
  - TODO: rsync to target with linux permissions support
  - TODO: rsync to target without linux permissions support
  - TODO: to AWS Simple Storage Service (S3)
  - TODO: to DigitalOcean Spaces Object Storage
  - TODO: to Azure Blob storage
  - TODO: to CGP Google Storage
- TODO: Consider implementing a backup restore procedure

## Features

- Separate configuration files for different folders
- Whitelist folders and files for processing
- exclude specific files and folders
- Define a default user
- Define default permissions for regular files folders
- Only documents deviating values from the defaults

