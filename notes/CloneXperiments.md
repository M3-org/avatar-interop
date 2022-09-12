---
title: CloneXperiments
description: Early experiments with avatars and wearables using the CloneX 3D files released by RTFKT studios
image: https://i.imgur.com/OESQhVT.jpg
robots: index, follow
lang: en
dir: ltr
breaks: true
disqus: xrdevlog
---

# CloneXperiments

###### tags: `m3` `devlog`

**Portals**

:back: [xrdevlog home](https://xrdevlog.com)
:cd: [M3 org home](https://m3org.com)
:man_dancing: [Avatar Interop Group](https://github.com/M3-org/avatar-interop)

**Tutorials**

- https://www.youtube.com/watch?v=ureBe6NpYLI Blender tutorial
- https://www.youtube.com/watch?v=bLzHtIyRHuc Pose and make Renders
- https://www.youtube.com/watch?v=0UyUnwJDI5w Create a Snap Filter
- metamike tutorials
    - https://hackmd.io/@metamike/CloneX-Tutorials
    - https://hackmd.io/@metamike/fbx-vrm-webaverse
    - https://hackmd.io/@metamike/CloneX-VRM
- https://twitter.com/RTFKTcreators/status/1545266950275706880 Tutorials thread

> This dev log documents the first week of M3 community playing with the CloneX 3D files that were just released. It's my aim that these dev logs can be useful for sharing and making presentations. I also think our feedback can help open standards working groups and projects / devs who want to improve the custom avatar ecosystem with tools, plugins, and new features." - jin

---

## About

- Site: https://clonex.rtfkt.com/
- Opensea: https://opensea.io/collection/clonex
- Community: https://twitter.com/RTFKTcreators

On 7/4/22 the CloneX 3D files have finally dropped with this [epic video](https://www.youtube.com/watch?v=cNtdJws_y8Y) and [blog post announcement](https://rtfktstudios.medium.com/a-new-era-begins-the-start-of-the-avatar-economy-91f644be33be) about the start of the Avatar Economy.

> We made Clone X in full 3D since day one, hand modeling all traits, and working to unlock this digital craftsmanship to all owners, along with the Clone IP commercial rights since we launched back in Dec 2021, for this very moment. We envision a future where Clone X owners tag team with 3D artists, become Vtubers / Superstars, and create their own wearable web3 fashion brand. [Source: A new Era Begins](https://rtfktstudios.medium.com/a-new-era-begins-the-start-of-the-avatar-economy-91f644be33be)

{%youtube cNtdJws_y8Y %}

> 3D files Unlock is in Alpha access, we’ll continue to update the models, features, and servers throughout the year.
>
>**Available in:**
.max .blend .c4d .gltf .fbx files for @unity and @UnrealEngine

For this release the RTFKT team pushed for full commercial rights without limitations as there were before (like setting a $1M cap). The Murakami drip CloneX exclude this since they're considered fine art. Overall I wanna give RTFKT props for consistency in setting higher standards for the NFT space, gj :clap: 

![](https://i.imgur.com/efKfIm4.png)

![](https://i.imgur.com/ZOm6dDz.png)

### Anon

This was the first CloneX that I began to test with. It's a convenient model because the face is obscured which means that I don't have to worry whenever I destroy the shapekeys (of which Daz has many).

![](https://i.imgur.com/2rs0PLx.png)


The default pose that CloneX are setup with is a-pose which made things a little tricky. Will illustrate below...

![](https://i.gyazo.com/4e9dab421fdbe9f2cdd8789339047d76.gif)

If you were to export the avatar with the legs spread that distance apart the character will walk like they shit their pants sorta

![](https://gyazo.com/184e4a909fb4bea9dfea5ea2de551e6e.gif =100%x)

Anyway, this is how the Anon CloneX looks with a default pose assembled in Blender.

![](https://i.imgur.com/45hSiDa.png)

The default pose actually became useful when using Mixamo to replace the default rig the CloneX came with.

| ![](https://i.imgur.com/yt8Ognn.jpg) | ![](https://i.imgur.com/HHikchJ.jpg) | ![](https://i.imgur.com/odJOiNU.png) |
| -------- | -------- | -------- |
| adding M3 bling | testing | mixamo rig
| ![](https://i.imgur.com/SZRS7tf.png) | ![](https://i.imgur.com/hrVtTWz.jpg) | ![](https://i.imgur.com/m4zLAAC.jpg) |
| Exporting VRM file | CloneX in Webaverse | Testing diff worlds

CloneX in Webaverse looks real good, Ryan (Crucible) remarked how Webaverse has come so far when jin presented some experiments at the [OMI group](https://omigroup.org/) community call.

![](https://gyazo.com/71d48810d6e683a6fa233647eaa27dba.gif)

Testing doom sprite avatar in Webaverse. Any VRM can be autoconverted into a sprite version by going into settings and selecting character quality low.

![](https://i.imgur.com/sxlscQo.gif =100%x)

**VRoid Hub**

https://hub.vroid.com/en/characters/7034545465028852594/models/5267995301054602721

![](https://i.imgur.com/k8tLNZY.jpg)



**Craftopia**



| ![](https://i.imgur.com/LlOthyM.jpg) | ![](https://i.imgur.com/Kldfzl6.jpg) | ![](https://i.imgur.com/VeADtjh.jpg) |
| -------- | -------- | -------- |


{%youtube yIiKKkQ-7dE %}
Watch on Youtube: https://www.youtube.com/watch?v=yIiKKkQ-7dE





---

### Robot Brother

The page where you download the 3D files for your CloneX is a bit noteworthy. Every owner of a CloneX sees it, whether they download the files themselves or when commissioning a 3D artist who needs the files.

The design is starting to remind me of a digital passport of sorts. What if the attributes can be made into an on-chain text NFT like loot?

![](https://i.imgur.com/xBNnFOP.png)

I decided to test out the Unity files first. I imported the packages into Unity 2019.4.31f1 along with UniVRM. The materials looked great out of the box, but I noticed that some of the meshes (jewelry) were clipping through my shirt. It would be an easy fix in Blender.

![](https://i.imgur.com/b0U2YAs.png)

I needed to make everything t-pose in order to do a VRM export. However, the various wearables did not pose along with my character. I soon hit a dead end as more non-obvious steps were needed at this point to debug the Unity workflow.

![](https://i.imgur.com/pZILME3.png)


![](https://i.imgur.com/OESQhVT.jpg)

![](https://i.imgur.com/wwsX6Z9.png)

![](https://i.imgur.com/UKeYsmS.jpg)

### M3taloot Robot

- https://hackmd.io/@xr/m3taloot

![](https://i.imgur.com/b3529pd.png)

### Unity files

I tried importing the unitypackages into Unity 2019.4.31f1 (same version VRchat SDK uses) to see if there was an easy path to export the CloneX to VRM using [UniVRM](https://github.com/vrm-c/UniVRM). It would be so much easier if the files came t-posed because then it could be exported, I struggled with trying to get my t-shirt to t-pose with my body.

![](https://i.imgur.com/uqj55cb.png)

Another thing, the files come as really high resolution and would make it obnoxious to import into social applications (no one wants to download a 100mb avatar file lol), so there would need to be an optimization step in between. Last year Simplygon released a [Unity plugin](https://documentation.simplygon.com/SimplygonSDK_9.2.4200.0/unity/gettingstarted/installation.html#simplygon-unity-plugin) which can be installed in the project and make generating LODs simpler.

---

## Robot Sister

I like how there's a tab for learning how to use the files with video tutorials, haven't seen such before on other 3D avatar drops.

![](https://i.imgur.com/7GWAGIQ.png)

Here's a comparison of the CloneX that was on https://clonex.rtfkt.com/ for awhile vs the actual CloneX 3D files owners are able to download.

![](https://i.imgur.com/kAqrO8h.jpg)

![](https://gyazo.com/f287c55abdb77095d33bcf9b094c8cc5.gif)


![](https://i.imgur.com/Stq9ejk.jpg)

![](https://i.imgur.com/GFIcwXe.jpg)

---

## Animation

Huge props to m00n for producing these helpful videos about animation retargeting!

Code: https://github.com/lalalune/clonex_animset

**Mixamo Animations to Vroid Avatars in Blender + exporting VRM!**
{%youtube iDJvENN0mqs %}
Watch on Youtube: https://www.youtube.com/watch?v=iDJvENN0mqs

> Made a quick explainer video to help some folks in the M3 community.

**Retargeting Mixamo Animations to CloneX in Blender** by m00n

{%youtube oN0i-bnclzg %}
Watch on Youtube: https://www.youtube.com/watch?v=oN0i-bnclzg
> Retargeting some mixamo animations to a CloneX character for a friend, thought I would share a video of the process. I'm kind of remembering and figuring it out in realtime so this is somewhere between a livestream and a tutorial.




---

## Level of Detail

- https://hackmd.io/@xr/avatarlod

![](https://i.imgur.com/na42N8Y.gif)

Started working on optimizing the clonex body base meshes to be ready to integrate into the avatar builders. The body and the head are separate objects. The body is the same cyborg bases for all CloneX, while the heads are different DNA traits.

**LOD 1**

Just a test really, it started to look sorta PS2 / N64 era which is kinda cool tbh

![](https://i.imgur.com/B5vdy3s.png)

**LOD 2**

9398 triangles, 4.55mb file, with head accessories on which NFT ownership grants commercial rights with. For all intended purposes this is pretty satisfactory for the avatar customizer programs.

![](https://i.imgur.com/1jVallN.png)

**Issues**

Having the character t-posed this way with the legs a smaller distance apart is good for VRM export but makes it more difficult to process through mixamo and to attach the clothes / accessories that the clonex files came with.

![](https://i.imgur.com/etOYCMi.png)

---

## Facecap

Pratte got MetaMike up and running with face tracking in blender

![](https://i.imgur.com/sNnGNug.png)

## ETC

Philbert vs MetaMike in VRAST!

![](https://i.imgur.com/FCRuuw6.jpg)

7OROY made a neat animation lol yes they're a bit fast we're just having fun

![](https://i.imgur.com/8gGfyYL.gif)
![](https://i.imgur.com/Df6hcZH.gif)


Props to MetaRick for helping get MetaMike's CloneX ready for VRC :sunglasses: 
![](https://i.imgur.com/v3h9ENv.png)

Dear reader :pencil: 
Like what we do? :heart_eyes:
Want to support? :thinking_face: 
I got just the thing :bulb:
Buy some [dank nugz](https://rarible.com/dankvr/sale) :broccoli: