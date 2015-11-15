#DO NOT USE!!
I broke something, check back tomorrow.

##PREVIEW
This theme is not ready yet. I just prepared the repository for when it is. Only fully functional commits will be made so you can use this to play 
around with the theme.
Theme is ready for use but no yet in it's final state. This ReadMe is maintained, check back if any issues occur or create an issue.

![Ghost Version](https://img.shields.io/badge/Ghost-0.7.x-brightgreen.svg?style=flat-square)
![Optimium Version](https://img.shields.io/badge/Version-Alpha-yellow.svg?style=flat-square)
![ReadMe last updated](https://img.shields.io/badge/ReadMe-15/11/2015-blue.svg?style=flat-square)

#Optimium
This is the (upcoming) version 5.0 of the Optimium theme.
Based on Optimium 3.4 and Willsong 1.1's initial code-base (which is being more and more replaced with Optimium's own).

#Objectives
The theme strives to be

- Modern (Use material design)
- Optimized for speed (According to Google's pagespeed)
- Optimized for all screen sizes (Willsong's "Ghostship" for grid system)
- Focus on a simple UX/UI while being visually appealing
- Staying up-to-date with the latest Ghost Releases

#Stuff to be done
- Gallery support
- Media post (Youtube, Video, Spotify and so on)
- Refactor css (This is a big one, CSS is unreadable and all new changes are simply added to the end of the file.)
- - Re-order parts of the css in a logical order
- - Seperate into seperate files (A shared one and one for each kind of page)
- (Lastly) Create a user and dev branch. The user will be mimified and uncommented to reduce size and dev will be thoroughly and formatted nicely. (Right now it's the worst of both worlds: too poorly structured to modify effenciently yet not compressed enough to play a difference. Also dated comments :/)
- Add search (Using ghosthunter.js)
- Add information card to tag pages
- Rehaul tag and author pages
- Get proper screen caps for demo

###Latest Update
Removed Grid System

##[Demo](https://knyz.org)
My personal website which is not even in progress of being done.. Theme is being tested there.

##[Custom Implementation](http://blog.pggr.org/)
This is a forked and dated build of Optimium's preview. Gives a rough idea of what the theme *can* look like. Map is obviously not included (which is the reason for the fork in the first place).

#How to install

1. Navigate to `/path/to/ghost/content/themes/`
2. Run the following command (Links to gist which links back to install.sh from this repo):
```
wget -q -O - http://bit.ly/1NRLR2X | bash
```
3. Restart Ghost
4. Select "Optimium" theme in the admin panel
5. Done!

#How to update
This is extra important right now in order to get the 5.0.0 build once it's released.
Just repeat the steps in the install section.
Note: Updates will overwrite any manual changes to the theme so be weary.

#Supported features
##All of Ghost's basic features
Excluding next and previous post, *maybe* we *might* add it in the future. Then again, maybe not. We'll see.
##link post type
Links to any page, simply add a "`link`" tag and insert the url into the body DO NOT FORMAT or it will fail. If you want to add some body, a cheap hack you can use is add a hashtag after the link so it will be all treated like a non-existant anchor.
##hidden post
Hides post from home.hbs and index.hbs by adding "`hidden`" tag. Is still shown on tag.hbs and author.hbs. To hide form everywhere, consider making the page static. Making posts private is not supported by neither Ghost nor Optimium.