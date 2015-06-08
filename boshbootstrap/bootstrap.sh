function install {
    echo installing $1
        shift
            apt-get -y install "$@" >/dev/null 2>&1
        }

        apt-get -y update >/dev/null 2>&1

        install 'development tools' build-essential

        install Ruby ruby2.0 ruby2.0-dev
        update-alternatives --set ruby /usr/bin/ruby2.0 >/dev/null 2>&1
        update-alternatives --set gem /usr/bin/gem2.0 >/dev/null 2>&1


        install Stuff git libsqlite3-dev erlang bwm-ng bundler
        install 'Nokogiri dependencies' libxml2 libxml2-dev libxslt1-dev zlib1g-dev
        sudo gem install bosh-bootstrap --no-rdoc --no-ri
        # Needed for docs generation.
        update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8
        echo 'Done!'