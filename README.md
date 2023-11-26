# perm-sync

:: This is work in progress ::

Save and restore linux user permissions.

- Control, detect and recover from unintended user permissions changes
- Restore user permissions when recovering backup files from sources not supporting them.

Features:

- Separate configuration files for different folders
- Cherry pick specific subfolders for processing
- exclude specific files and folders
- Define a default user
- Define default permissions for regular files folders
- Only documents deviating values from the defaults

## Motivation

Existing tools like `getfacl` and `setfacl` were not fitting for my current needs.

## Links

- https://linux.die.net/man/1/getfacl
