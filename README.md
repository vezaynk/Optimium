#Optimium
Optimium is a responsive material design theme based on Willsong and Casper supporting advanced features using specialized tag use.
It's current objective to be a theme to work out-of-the box, offer LTS (Long Term Support) meaning that it will keep up-to-date with Ghost's latest features such as the upcoming API.

Note: Working alone is making me lack time to work on this. I am not using Ghost to save on time as of now. I will resume development eventually. ;)

##Preview
This theme is currently in active development. It is **not** complete and is updated frequently. Keep that in mind.

![Ghost Version](https://img.shields.io/badge/Ghost-0.7.2-brightgreen.svg?style=flat-square)
![Optimium Version](https://img.shields.io/badge/Version-Alpha%20%28pre--5.0.0%29-yellow.svg?style=flat-square)
![ReadMe last updated](https://img.shields.io/badge/ReadMe-29/11/2015-blue.svg?style=flat-square)

#Installation
There are currently two branches: `master` and `bleeding-edge` while new ones are yet to come such as `beta`, `nightly` and `dev`.

##Master Install
Use this branch as much as possible. Often we will skip the commits to `bleeding-edge` and go directly to `master` thus making it more up-to-date than the beta branches.

Master is the tested and stable branch which will be updated by versions after the release instead of the make-shift merges we have now. (The reason for the makeshift merges right now is because we want to push bug fixes and such as soon as possible, sometimes a few per day).

To install from `master` do the following:

1. Navigate to `/path/to/ghost/content/themes/`
2. Run the following command:
```
wget -q -O - http://bit.ly/1NRLR2X | bash
```
3. Let the installer do it's thing and then if it failed to restart ghost on itself, do so manually.

##Bleeding Edge
Bleeding edge is the branch used for active development in order to deploy to KNYZ Labs. This branch will be deprecated after formal release and will be replaced with `beta` and `nightly`.

To install `bleeding-edge`, perform the [Master Install](#masterinstall) and the run the update script with `bleeding-edge` as the argument.

    bash optimium.sh bleeding-edge

To opt out of the `bleeding-edge` branch, simply update the theme normally.

#Updating
To update Optimium to the latest version run 

    bash optimium.sh

And then restart ghost if installer failed to do so.
>In order to install update client updates you need to run the update script *twice*. Once to get the new script and the second to run it.

#Commenting
Adding comment systems to Optimium is easier than any other theme. Simply paste the comment embed code into `Ghost Footer` in Ghost's settings (In the `Code Injection` tab) and it will be embedded automatically into posts.

>*Ghost Footer* will be exclusively embedded into posts while *Ghost Header* is embedded in the `<head>` of all pages as usual. So Google analytics and such will have to go into the head.

#Advanced Tag Usage:

##Exclusion Tags

 - `home-only`: Doesn't show post on any index pages except the homepage.
 - `no-home`: Doesn't show post on homepage.
 - `index-only`: Doesn't show post on pages other than the homepage and subsequent pages.
 - `no-index`: Doesn't show post on the homepage and subsequent pages.
 - `tag-only`: Doesn't show post on any index pages except tag indexes.
 - `no-tag`: Doesn't show post on tag pages.
 - `author-only`: Doesn't show post on any pages except authors' personal pages.
 - `no-author`: Doesn't show post on authors' personal pages.
 - **[Deprecated]** `hidden`: Same as `no-index`
 - `private`: Will hide post from ALL index pages but it will **NOT** make the page inaccessible since it will be findable via the sitemap.xml, robots.txt and the RSS feed. Only good for keeping links of irrelevant posts alive.

> These only work in the negative. 
Meaning that using `tag-only` and `author-only` will **not** give you the result of only showing the post in author and tag but will instead hide it from everywhere. To achieve that, you will need to use `no-index` instead.

##Special Tags
`type-link`: Adding this tag converts the post into a link. The link data is taken from the post's body. Meaning that to link to `http://example.com`, the post's body will have to be `http://example.com` and **nothing else**.

`type-custom`: The body is outputted completely in the index in `HTML` form. This means that you can enter any `html` you like into the body and it will be outputted instead of the card.

`type-raw`: On index pages, the body of the post is outputted instead of the excerpt.

#Best Practices
##Fill out all blog details
This includes authors' information. The theme currently doesn't handle lack of data very well and author pages will give you a generic icon instead of your image if you don't have one.
##Comments
Our recommended commenting system is [Muut](https://muut.com).

##Images
The recommended size for post cover images is `760x400` since anything with a proportionally larger height will be cut off in indexes and the width is limited to `760px`.

The cover should be along the lines of `1600x900` with the most important content centered and at the top.

The author image 
Try to follow [Google's material design standards for imagery](https://www.google.com/design/spec/style/imagery.html#) as much as possible to fit the theme better and/or use images with white background.

##Copyright Notice
The MIT License (MIT)

Copyright (c) 2015 Slava Knyazev <slava@knyz.org> and KNYZ Labs (https://www.knyz.org)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
