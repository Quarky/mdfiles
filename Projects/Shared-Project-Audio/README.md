# Shared Project Audio

Central audio-library project.

Canonical repositories:
- Binary audio library: `Quarky/sharedprojectaudio`
- Per-director manifests/source: `Quarky/audioprojects`

Foundry setup/update scripts clone the shared audio repository over SSH and use per-director dependency manifests to overlay only the required audio files into stripped Audio Director modules.
