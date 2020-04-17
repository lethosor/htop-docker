# htop-docker

The lightest htop docker image out there - only 1.2 MB! Smaller than Alpine!
None of those pesky, bloated system utilities included.

```shell
$ docker save alpine | wc -c
5866496
$ docker save htop | wc -c
1285632
```

## FAQ

### Does it work?

Sure.

![Screenshot](https://raw.githubusercontent.com/lethosor/htop-docker/master/screenshot.png)

### How do I get to a shell?

Nope.

### Does it contain _anything_ besides htop?

[Yup](https://github.com/lethosor/htop-docker/blob/master/Dockerfile):
- ncurses, so htop can draw to the screen
- terminfo, so ncurses can figure out how to draw to the screen
- a linker, so htop can load ncurses
- some handy folders you can put stuff in if you can figure out how

### Is it useful?

If you want to see what resources htop is using, sure.

(Actually, [other people](https://hub.docker.com/search?q=htop&type=image) have built similar images, so it's probably useful to monitor other containers. Doing so is left as an exercise to the reader.)
