##PREVIEW
This theme is not ready yet. I just prepared the repository for when it is. Only fully functional commits will be made so you can use this to play 
around with the theme.
Theme is ready for use but no yet in it's final state. This ReadMe is maintained, check back if any issues occur or create an issue.

![Ghost Version](https://img.shields.io/badge/Ghost-0.7.x-brightgreen.svg?style=flat-square)
![Optimium Version](https://img.shields.io/badge/Version-Alpha-yellow.svg?style=flat-square)
![ReadMe last updated](https://img.shields.io/badge/ReadMe-20/11/2015-blue.svg?style=flat-square)

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
- (Lastly) Create a user and dev branch. The user will be mimified and uncommented to reduce size and dev will be thoroughly and formatted nicely. (Right now it's the worst of both worlds: too poorly structured to modify effenciently yet not compressed enough to play a difference. Also dated comments :/)
- Add search (Using ghosthunter.js)
- Add information card to tag pages
- Rehaul tag and author pages
- Get proper screen caps for demo
- Remove comment area if there are no comments
- Add table of contents to readme and link to more comprehensive guide.

###Latest Updates
New update client

##[Demo](https://www.knyz.org)
My personal website which is not even in progress of being done.. Theme is being tested there. Will usually not be in sync up with the actual repository since changes are constantly being done there. Keeping it in sync with this repo is both dangerous and stupid.

##[Practical Demo](http://blog.pggr.org/)
Client using the Optimium theme which has been recently re-connected to upstream. 
Map on the top of the page is no longer a deviation of the theme. It is there by using the `custom` tag for custom html, `home-only` to only display it on the homepage and it is featured to stick to the top. 

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

1. Go to `/path/to/ghost/content/themes` 
2. Run `bash optimium.sh`

Note: Updates will overwrite any manual changes to the theme so be weary.

#Supported features
##All of Ghost's basic features
Excluding next and previous post, *maybe* we *might* add it in the future. Then again, maybe not. We'll see.
##link post type
Links to any page, simply add a "`link`" tag and insert the url into the body DO NOT FORMAT or it will fail. If you want to add some body, a cheap hack you can use is add a hashtag after the link so it will be all treated like a non-existant anchor.
##hidden post
Hides post from home.hbs and index.hbs by adding "`hidden`" tag. Is still shown on tag.hbs and author.hbs. To hide form everywhere, consider making the page static. Making posts private is not supported by neither Ghost nor Optimium.
Deprecated and will be removed in favor of `no-index` in future updates.
##custom
This is dev-mode essencially. It is no longer an actual post but will just spew out the exact html you insert in the body as if it were a post allowing you to add anything to index pages (home, index, tag and author)
##Exclusions
To improve upon the *custom* concept, we will introduced a way to show the post only on specific pages. Here they are:

 - `home-only`: Doesn't show post on any index pages except the homepage.
 - `no-home`: Doesn't show post on homepage.
 - `index-only`: Doesn't show post on pages other than the homepage and subsequent pages.
 - `no-index`: Doesn't show post on the homepage and subsequent pages.
 - `tag-only`: Doesn't show post on any index pages except tag indexes.
 - `no-tag`: Doesn't show post on tag pages.
 - `author-only`: Doesn't show post on any pages except authors' personal pages.
 - `no-author`: Doesn't show post on authors' personal pages.
 - `hidden`: Same as `no-index`.
 - `private`: Will hide post from ALL index pages but it will **NOT** make the page unaccessible since it will be findable via the sitemap.xml, robots.txt and the RSS feed. Only good for keeping links of irrelevant posts alive.

Notes: These only work in the negative. 
Meaning that using `tag-only` and `author-only` will NOT give you the result of only showing the post in author and tag but will instead hide it from everywhere.
This is NOT a proper way to hide it from everywhere and `hidden` will not cover this situation either. 
You just shouldn't publish the page in the first place or add the `private` tag which will not show it anywhere but still allow linking.

#Best Practices
##Edit images before uploading as cover
We recommend size 760x400. It will work better like that.
##Comments
We are pretty much the only theme (as far as I know) that made it easy to add any comments you want (But we officially support [muut](https://muut.com/) and will sacrifice functionality of others without any hesitation)
How to add comments:
 - Get code (Muut, Disqus, livefyre, whatever)
 - Paste it into `ghost_footer` in the *code injection* section
 - Done. That was easy!
##Quoting
When quoting someone, it's always a great idea to give a source. Just add two ">" and then the source after the quote.
Example:
```
>Ghost is a simple, powerful publishing platform that allows you to share your stories with the world.
>>Source: https://ghost.org
```
#Issues faced
##Search
Ghosthunter.js seems to be having some issues, I want to make sure that it is all working perfectly before integrating it into Optimium.
##Media Posts
Hard time figuring out how to do that
##Galleries
Figuring out how to make galleries easy to make without using any confusing methods or manipulating the text with JQuery. We are looking for a nativish solution since ghost doesn't allow gallery posts.
A post type focusing of a single picture is something we are looking into though.