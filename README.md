# Scientific Cluster

A implementation of a scientific cluster on top of QEMU.

This allows to test different architectures, components and policies.

It can also serve to maintain a virtual version of whatever is in production (to test stuff, document, ...)

# Used components

- A Debian based Linux
- SLURM as a queuing manager
- LUSTRE as the cluster file system
- NFS to export externally
- LDAP (OpenLDAP) for user management

# Architecture

![Architecture][arch.jpg]

The beautiful image above needs explanation.

# FAQ

## Why not Docker?

LUSTRE requires access to block volumes.
