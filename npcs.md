# NPCs

###### tags: `devlog` `m3`

- publish example NPC code from demos
- very similar structure already
- focus on naming schemes for interop
- hyperfy NPCs are glb, wants to do VRM + fbx (mixamo) anim next
- would be nice to have a gui editor, maybe nodes graph based
- dialogue trees would be nice, hosted on some server NPCs somewhere could influence NPCs in some other places
- keep it simple



---

## A

- Watch on Youtube: https://www.youtube.com/watch?v=jLzRKxZkdyw

{%youtube jLzRKxZkdyw %}

---

## Webaverse

- https://hackmd.io/@XR/pets#Tubby-Pets
- https://github.com/M3-org/tubby-pet/blob/main/yellowcupid/.metaversefile

![](https://i.imgur.com/ThjftX1.gif)

glb pets don't have AI support in webaverse

```
{
  "name": "jin_tubby",
  "start_url": "jin_tubby.glb",
  "components": [
    {
      "key": "look",
      "value": {
        "rootBone": "mixamorig_Neck"
      }
    },
    {
      "key": "pet",
      "value": {
        "idleAnimation": "idling",
        "walkAnimation": "walk",
        "runAnimation": ""
      }
    }
  ]
}
```

---

## Hyperfy

- [Gist: Erika Teddy Quest](https://gist.github.com/ashconnell/6f6257fd7978a01bd6d96dcf1e8770be)
- [Github issue: create a glb npc with multiple animations](https://github.com/M3-org/avatar-interop/issues/17)

Ash wants to change to VRM NPCs later on

```jsx=
const schema = {
  id: 'Erika',
  origin: 'intro',
  views: {
    intro: {
      text: "Oh... hey...\nI'm kind of a bit sad right now...",
      goto: 'questAsk',
    },
    questAsk: {
      text: 'I seem to have misplaced by teddy bear somewhere. I swear its around here somewhere. Will you help me find it?',
      origin: 'questAsk',
      options: [
        { text: "Sure, I'll find it!", goto: 'questAccept' },
        { text: 'Maybe later', goto: 'questReject' },
      ],
    },
    questReject: {
      text: '*Sniff* *Sniff*\n\nOkay... no worries...',
    },
    questAccept: {
      text: 'Oh gosh really? Thank you so much! Please return soon!',
      origin: 'questActive',
    },
    questActive: {
      text: 'Welcome back. Any luck finding my teddy bear?',
      options: [
        { text: 'Yep, here you go!', require: 'item', goto: 'questComplete' },
        { text: 'Sorry, not yet', goto: 'questNotYet' },
      ],
    },
    questNotYet: {
      text: 'I really hope you can find him for me!',
    },
    questComplete: {
      text: 'Oh for realsies!?!? You found him! Thank you so much sir!',
      origin: 'loved',
      event: 'complete',
    },
    loved: {
      text: "I don't know what I would have done if you didn't find my teddy for me.",
    },
  },
}
```

Watch on Youtube: https://www.youtube.com/watch?v=Ci1oB-LoMfc

{%youtube Ci1oB-LoMfc %}

---

### hyperfy lasershark

![](https://i.imgur.com/83aA5C9.jpg)

Demo: https://hyperfy.io/lasershark
Github: https://github.com/la53rshark/hyperfy-lasershark
Dialog: https://github.com/la53rshark/hyperfy-lasershark/blob/development/components/world/dialog/Erika.js





---

## Anarchy Arcade


{%youtube STQRpylK8kI %}
Watch on Youtube: https://www.youtube.com/watch?v=STQRpylK8kI

- https://store.steampowered.com/app/266430/Anarchy_Arcade/

![](https://i.imgur.com/hsr1Ba4.png)


![](https://i.imgur.com/ll0HJZW.jpg)

```
"ezquest"
{
	"id"		"-t_LwvBEuRnblkT1iCSt"
	"_template"		"gossip"
	"title"		"Talk to Jin"
	"objective"		"He's lurking somewhere."
	"success"		"Pssst!
Hey! Buddy! Over here.
You look like somebody who appreciates fine things.
I just happen to have some fine things on me right now for barter.
Perhaps I can interest you in some of my merchandise.
	What have you got?
		What have I got?
		What haven't I got.
		What I have for you here, friend, are some of the finest NFTs you'll find this side of the metaverse.
		Freshly minted - you can still smell the burnning nvidia smell on them.
			Do you take republic credits?
				...
				If you don't have a wallet, then we can't do business.
				I think I saw a JC Penny down the street.
				Maybe you'll find something more your style there.[success]
	No thanks.
		Your loss. These goods will be 10 times as expensive when you finally do come around."
	"spin"		"0"
	"object"		"-tZoq7zb4bbeTfjfAINe"
	"type"		"comic"
	"interact"		"useRepeatable"
	"presence"		"always"
	"Visibility"		"default"
	"initial"		"active"
	"collidable"		"1"
}
```

---

## VRChat

![](https://i.gyazo.com/8586322330286b94b413cf1912998895.gif)

https://hackmd.io/@XR/mocap-interop#NPCs

{%youtube r8YpXP0RlZc %}
https://www.youtube.com/watch?v=r8YpXP0RlZc
https://qiita.com/Ruuubick/items/b07028bc935421ca6e2e

---

## JanusXR

Ghost recordings and replays as NPCs
Packet capture and replay
Timestamps become the options
