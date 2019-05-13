FROM embida/quartus-lite:latest

RUN mkdir -p /eds && cd /eds \
    && curl http://download.altera.com/akdlm/software/acdsinst/18.1std/625/ib_installers/SoCEDSSetup-18.1.0.625-linux.run \
    && ./SoCEDSSetup-18.1.0.625-linux.run --mode unattended --accept_eula 1 --installdir {{install_dir}} --disable-components qprogrammer \
    && rm -r /eds 
