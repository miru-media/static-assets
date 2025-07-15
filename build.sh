root=$(realpath $(dirname $0))
video_dir=$root/video

echo ROOT: $root

rm -rf $root/dist/*
mkdir -p $root/dist/demo

pushd $root/dist/demo

ffmpeg -i $video_dir/turtle-PaulsAdventures-pixabay.mp4       -ss 00:00:20 -to 00:00:30 -g 10 -tune fastdecode -crf 20 turtle-PaulsAdventures-pixabay.mp4
ffmpeg -i $video_dir/wave-breaking-EclipseChasers-pixabay.mp4 -ss 00:00:00 -to 00:00:10 -g 10 -tune fastdecode -crf 20 wave-breaking-EclipseChasers-pixabay.mp4
ffmpeg -i $video_dir/waves-MustaKor-pixabay.mp4               -ss 00:00:00 -to 00:00:07 -g 10 -tune fastdecode -crf 20 waves-MustaKor-pixabay.mp4
ffmpeg -i $video_dir/waves-rocks-McPix22-pixabay.mp4          -ss 00:00:00 -to 00:00:07 -g 10 -tune fastdecode -crf 20 waves-rocks-McPix22-pixabay.mp4

cp $root/audio/* .
cp $root/netlify.toml .

popd

cp -rv $root/gltf $root/dist

touch $root/dist/_
