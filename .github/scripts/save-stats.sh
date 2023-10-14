#!/bin/bash

set -euxo pipefail

package_dir="$PROJECT_NAME-$PLATFORM"

mkdir $package_dir

unzip -q $PROJECT_NAME-$PLATFORM-$VERSION.zip

"$package_dir/pharo/bin/pharo" --headless $package_dir/image/$PROJECT_NAME.image eval "
| getResponse getContents downloads text timestamp filename putResponse |

getResponse := ZnClient new
                   url:
                       'https://api.github.com/repos/openponk/$REPOSITORY_NAME/releases/tags/nightly';
                   accept: ZnMimeType applicationJson;
                   setBearerAuthentication: '$GITHUB_TOKEN';
                   get;
                   response.

getContents := STONJSON fromString: getResponse entity contents.

(getResponse status >= 300 or: [
     (getContents includesKey: #assets) not ]) ifTrue: [
    self error: (String streamContents: [ :s |
             s << 'Get response status ' << getResponse status asString << '.'.
             getResponse status == 404 ifTrue: [
                 s
                 <<
                 ' If this is the first build of this repository, manually create pre-release named "nightly" first and create branch named dls (possibly with no files). This is whole body of response: '
                 << getResponse entity contents ] ]) ].

downloads := (getContents at: #assets) sumNumbers: [ :each |
                 each at: #download_count ].

downloads isZero ifTrue: [
    ^ 'No downloads of last nightly build - nothing to upload' ].

text := String streamContents: [ :s |
            s << 'name,created_at,download_count'.
            s lf.
            (getContents at: #assets) do: [ :each |
                s << (each at: #name) asString << ','
                << (each at: #created_at) asString << ','
                << (each at: #download_count) asString.
                s lf ] ].

timestamp := DateAndTime now asString.
filename := ((timestamp first: 19) copyReplaceAll: ':' with: '')
            , '.csv'.

putResponse := ZnClient new
                   url:
                       'https://api.github.com/repos/openponk/$REPOSITORY_NAME/contents/'
                       , filename;
                   accept: ZnMimeType applicationJson;
                   setBearerAuthentication: '$GITHUB_TOKEN';
                   entity: (ZnEntity
                            with: '{
\"content\":\"' , text asByteArray base64Encoded , '\",
\"message\":\"' , timestamp , '\",
\"branch\":\"dls\"  
}'
                            type: ZnMimeType applicationJson);
                   put;
                   response.

(putResponse status >= 300) ifTrue: [
    self error: (String streamContents: [ :s |
             s << 'Put response status ' << putResponse status asString << '.'.
             putResponse status == 404 ifTrue: [
                 s
                 <<
                 ' If this is the first build of this repository, manually create branch named dls (possibly with no files). This is whole body of response: '
                 << putResponse entity contents ] ]) ].

^ 'Uploaded ' , downloads asString , ' download count'
"
