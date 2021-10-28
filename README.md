# FFmpeg Scripts
A collection of batch scripts that I use to automate various things I regularly do with video files. The idea is to be able to drag and drop 1 or more video files onto one of these scripts.

Here is a list of the scripts with their purpose:
| Script                                     | Purpose                                                                                                                                                                                                                                                                                    |
| ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ss`* **                                   | cut everything *until* the given timestamp (see [the FFmpeg Documentation](http://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for timestamp format)                                                                                                                                 |
| `sseof`* **                                | same as `ss`, but timestamp is interpreted from the end (see [the FFmpeg Documentation](http://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for timestamp format)                                                                                                                    |
| `to`*                                      | cut everything *from* the given timestamp to the end (see [the FFmpeg Documentation](http://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for timestamp format)                                                                                                                       |
|                                            |                                                                                                                                                                                                                                                                                            |
| `Shadowplay - mix`                         | for a Shadowplay recording with Microphone and System sound seperated in different audio streams, create a new file with a third default audio stream with both of the other streams mixed together - useful for viewing the videos in a player that can only play one audio track at once |
| `Shadowplay - mix + adjust audio volumes`* | same as `Shadowplay - mix`, but additionally ask for volumes of both audio streams (see [the FFmpeg Documentation](http://ffmpeg.org/ffmpeg-filters.html#volume) for how the values affect volume)                                                                                         |

<sup>* script expects an input upon running</sup>\
<sup>** the cut will seek to the nearest keyframe, so it will not be an accurate cut - cutting accurately would require some reencoding</sup>

None of these scripts actually change the original file, but will instead create a new file named the same as the original with some related prefix to mark the change.
