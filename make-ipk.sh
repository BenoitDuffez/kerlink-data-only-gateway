#!/bin/bash

tar czf control.tar.gz control postinst
tar czf data.tar.gz etc usr
echo 2.0 >debian-binary

package=$(awk -F': ' '/Package/{print $NF}' control)
version=$(awk -F': ' '/Version/{print $NF}' control)
arch=$(awk -F': ' '/Architecture/{print $NF}' control)

ar rc ${package}_${version}_${arch}.ipk debian-binary control.tar.gz data.tar.gz

rm debian-binary control.tar.gz data.tar.gz
