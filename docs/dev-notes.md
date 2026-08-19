# Development Workflow

This document explains the internal workflow and structure used for the Sekiro PopTracker.

---

# Branch Structure

### Main branches

#### `develop`
Stable integration branch.

All completed features are merged into `develop`.
This branch should always contain the latest stable working state of the tracker.



#### `feature/...` branches

Each map or major feature gets its own feature branch.

Examples:
- `feature/hirata-estate`
- `feature/ashina-castle`
- `feature/senpou-temple` 

Feature branches contain:
- map assets
- layout work

A feature branch should represent a complete map/module.

---

# Workflow

1. Create `feature/...` branch from `develop`
2. Work on map/layout/assets
3. Test functionality locally
4. Merge into `develop` when complete


### Rules

- No direct commits to `develop`
- Keep feature branches focused on one map/module
- Use descriptive commit messages
- Test map paths and references before merging

---

# Changelog

`CHANGELOG.md` tracks all project changes.

### Unreleased

All active development changes must be documented under:
- Added
- Changed
- Fixed
- Removed

Before a release:
- move `Unreleased` entries into the new version section
- create a fresh empty `Unreleased` block

---

# Versioning

Project uses semantic versioning:

- `vX.Y.Z`

Where:
- `X` = major update / major rework
- `Y` = new maps / features / UI updates
- `Z` = fixes / hotfixes / logic corrections

Examples:
- `v0.1.0`
- `v0.2.3`
- `v1.0.0` 
