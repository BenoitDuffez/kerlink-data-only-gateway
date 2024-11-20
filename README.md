# Kerlink Helium data-only gateway

This is a very bare setup to run the Helium gateway without key security, e.g. on the filesystem, e.g. no PoC activity but only data forwarding.

There is probably a lot to improve (starting with getting the latest release from Helium's GitHub account instead of a static binary in this repository), PR welcome.

# Usage

This should be as easy as

```bash
git clone https://github.com/BenoitDuffez/kerlink-data-only-gateway
cd kerlink-data-only-gateway
./make-ipk.sh
```

There may be some dependencies to be installed, though it should be available in any distro package manager.
