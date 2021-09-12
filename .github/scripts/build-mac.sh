#!/bin/bash

set -euxo pipefail

ci_build_dir=$SMALLTALK_CI_BUILD
package_dir="$PROJECT_NAME-$PLATFORM"
vm_dir=`cat $SMALLTALK_CI_VM | sed 's|\(.*\)/.*|\1|'`/pharo-vm

mkdir -p "$package_dir/image"

cp -r $vm_dir/Pharo.app/ $package_dir/Pharo.app

cp $ci_build_dir/TravisCI.image $package_dir/image/$PROJECT_NAME.image
cp $ci_build_dir/TravisCI.changes $package_dir/image/$PROJECT_NAME.changes
cp $ci_build_dir/*.sources $package_dir/image

cat << EOF > $package_dir/$PROJECT_NAME
#!/bin/bash
Pharo.app/Contents/MacOS/Pharo image/$PROJECT_NAME.image
EOF

chmod a+rx $package_dir/$PROJECT_NAME

$package_dir/Pharo.app/Contents/MacOS/Pharo --headless $package_dir/image/$PROJECT_NAME.image eval --save "OPVersion currentWithRunId: $RUN_ID projectName: '$REPOSITORY_NAME'"

zip -qr $PROJECT_NAME-$PLATFORM-$VERSION.zip $package_dir
