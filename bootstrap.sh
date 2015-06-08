function install {
    echo installing $1
        shift
            apt-get -y install "$@" >/dev/null 2>&1
        }

        apt-get -y update >/dev/null 2>&1

        install 'development tools' build-essential

        install Ruby ruby2.2 ruby2.2-dev
        update-alternatives --set ruby /usr/bin/ruby2.2 >/dev/null 2>&1
        update-alternatives --set gem /usr/bin/gem2.2 >/dev/null 2>&1


        echo installing Bundler
        install bundler -N >/dev/null 2>&1

        install Git git

        install 'Nokogiri dependencies' libxml2 libxml2-dev libxslt1-dev

        echo 'Done!'
