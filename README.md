# Smallworlds
An interactive fiction framework in Pharo Smalltalk.

The Framework is based on the Smallworlds package for Dolphin Smalltalk (http://ftp.sunet.se/pub/lang/smalltalk/Dolphin/SmallWorlds/) from Bob Jarvis. But it has changed to the point of becoming something else entirely.

This fork adds support for Telegram bots and a "World builder" tool.

## Installing

Open the Playground and execute the following command:

```smalltalk
    Metacello new
	    repository: 'github://edcrypt/smallworlds';
	    baseline: 'Smallworlds';
	    load.
```

## Starting Cloak of Darkness

### With Spec

To open the cloak of darkness sample, execute the following code:

```smalltalk
    (AdventureShell world: CDGameWorld new) openWithSpec.
```

### With Bottlegram

Add the @BotFather on Telegram to create a bot and obtain a token, then execute the following:

```smalltalk
chat := (AdventureChat new: 'TOKEN')
		world: CDSmallWorld new;
		wellcomeMessage: 'Welcome';
		helpMessage: 'HEEEELP!1';
		yourself.
chat startBotPulling: 1.
```

To stop it:
```smalltalk
chat stopBot.
```
