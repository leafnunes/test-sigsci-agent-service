
for version in 1.21.0 1.22.0 1.23.0 1.23.1 1.23.2 1.23.3 1.23.4 2.0.0;
do
    cat appveyor.yml.in | sed s/@SIGVERSION@/$version/g > appveyor.yml
    git commit -a -m "update to test $version"
    git push
    sleep 160
done
