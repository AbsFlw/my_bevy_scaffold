project_name=$1

cargo new $project_name
cd $project_name

cargo add bevy

echo "" >> Cargo.toml
echo "[features]" >> Cargo.toml
echo 'default = ["dev_native"]
dev = [
    # Improve compile times for dev builds by linking Bevy as a dynamic library.
    "bevy/dynamic_linking",
    "bevy/bevy_dev_tools",
    "bevy/bevy_ui_debug",
    # Improve error messages coming from Bevy
    "bevy/track_location",
]
dev_native = [
    "dev",
    # Enable asset hot reloading for native dev builds.
    "bevy/file_watcher",
    # Enable embedded asset hot reloading for native dev builds.
    "bevy/embedded_watcher",
]' >> Cargo.toml
echo "" >> Cargo.toml 
echo '[profile.dev.package."*"]
opt-level = 3

[profile.dev.package.wgpu-types]
debug-assertions = false

[profile.release]
opt-level = 3
lto = "thin"
codegen-units = 1
strip = "debuginfo"' >> Cargo.toml

curl https://raw.githubusercontent.com/bevyengine/bevy/main/examples/3d/3d_scene.rs > src/main.rs
