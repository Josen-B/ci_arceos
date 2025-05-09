#[cfg(not(feature = "hv"))]
mod boot;
#[cfg(feature = "hv")]
// Todo: maybe we can enter el2 in arm_vcpu?
mod boot_el2;

pub mod generic_timer;
#[cfg(not(platform_family = "aarch64-raspi"))]
pub mod psci;

#[cfg(feature = "irq")]
pub mod gic;

#[cfg(not(any(
    platform_family = "aarch64-bsta1000b",
    platform_family = "aarch64-rk3588j"
)))]
pub mod pl011;
