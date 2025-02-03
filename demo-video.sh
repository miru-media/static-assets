root=$(realpath $(dirname $0))
video_dir=$root/video

echo ROOT: $root

rm -rf $root/dist/*
mkdir -p $root/dist/demo

pushd $root/dist/demo

ffmpeg -i $video_dir/turtle-PaulsAdventures-pixabay.mp4       -ss 00:00:16 -t 00:00:26 -g 30 -crf 20 turtle-PaulsAdventures-pixabay.mp4
ffmpeg -i $video_dir/wave-breaking-EclipseChasers-pixabay.mp4 -ss 00:00:00 -t 00:00:10 -g 30 -crf 20 wave-breaking-EclipseChasers-pixabay.mp4
ffmpeg -i $video_dir/waves-MustaKor-pixabay.mp4               -ss 00:00:00 -t 00:00:10 -g 30 -crf 20 waves-MustaKor-pixabay.mp4
ffmpeg -i $video_dir/waves-rocks-McPix22-pixabay.mp4          -ss 00:00:00 -t 00:00:10 -g 30 -crf 20 waves-rocks-McPix22-pixabay.mp4

cp $root/audio/* .

touch _

popd
