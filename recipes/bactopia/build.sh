#!/bin/bash
BACTOPIA="${PREFIX}/share/${PKG_NAME}-${PKG_VERSION}"
mkdir -p ${PREFIX}/bin ${BACTOPIA}

chmod 777 bactopia
mv bactopia ${PREFIX}/bin

chmod 777 bin/helpers/*.py
mv bin/helpers/*.py ${PREFIX}/bin

# Move bactopia nextflow
mv bin/ conda/ conf/ templates/ tools/ main.nf nextflow.config ${BACTOPIA}
