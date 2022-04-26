#/bin/bash
rpm --import https://downloads.linux.hpe.com/SDR/hpPublicKey2048.pub
rpm --import https://downloads.linux.hpe.com/SDR/hpPublicKey2048_key1.pub
rpm --import https://downloads.linux.hpe.com/SDR/hpePublicKey2048_key1.pub

cat > /etc/yum.repos.d/spp.repo << SPPREPO
[spp]
name=Service Pack for ProLiant
baseurl=http://downloads.linux.hpe.com/repo/spp-gen8/redhat/7/x86_64/current
enabled=1
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/GPG-KEY-ServicePackforProLiant
SPPREPO