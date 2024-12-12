# CapsLockX - 💻 Get Hacker's Keyboard. Operate your computer like a **hacker**

CapsLockX is a modular hotkey script engine based on AutoHotkey. It allows you to operate your computer efficiently like a hacker in a movie without ever taking your hands off the keyboard. It comes packed with functions that are intuitive and easy to use: enhanced editing, virtual desktop and window management, mouse simulation, in-app hotkey enhancement, JS mathematical expression calculation, and many more multifunctional features are there for you to personally customize.

Here is a tiny online demo to show you the feeling how WASD Mouse + HJKL Keyboard works - [Try CapsLockX]( https://snomiao.github.io/capslockx.js/ )

Docs in Languages:
**[English Docs (ChatGPT Translated)](https://capslockx.snomiao.com/)**
**[简体中文 説明](./docs/README.zh.md)**
**[See Any Language Docs (Google Translated)](https://capslockx.snomiao.com/)**

---

## Badges Wall 📛 Badges

<!-- culture badges  -->

[![Chinese Programming](https://github.com/Program-in-Chinese/overview/raw/master/%E4%B8%AD%E6%96%87%E7%BC%96%E7%A8%8B.svg)](https://github.com/Program-in-Chinese/overview),
[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)
[![GitHub license](https://img.shields.io/github/license/snolab/CapsLockX)](https://github.com/snolab/CapsLockX/blob/master/LICENSE.md)
![GitHub top language](https://img.shields.io/github/languages/top/snolab/CapsLockX)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/snolab/CapsLockX)
[![GitHub stars](https://img.shields.io/github/stars/snolab/CapsLockX)](https://github.com/snolab/CapsLockX/stargazers)

<!-- build and publish status -->

![GitHub release (latest by date)](https://img.shields.io/github/v/release/snolab/CapsLockX)
[![gh-pages](https://github.com/snolab/CapsLockX/actions/workflows/gh-pages-release.yml/badge.svg)](https://github.com/snolab/CapsLockX/actions/workflows/gh-pages-release.yml)
![GitHub all releases](https://img.shields.io/github/downloads/snolab/CapsLockX/total)
[![jsdelivr_GITHUB](https://data.jsdelivr.com/v1/package/gh/snolab/capslockx/badge)](https://www.jsdelivr.com/package/gh/snolab/capslockx)

[![npm](https://img.shields.io/npm/v/capslockx)](https://www.npmjs.com/capslockx)
[![npm publish](https://github.com/snolab/CapsLockX/actions/workflows/npm-publish.yml/badge.svg)](https://github.com/snolab/CapsLockX/actions/workflows/npm-publish.yml)
![npm](https://img.shields.io/npm/dt/capslockx)
![jsDelivr hits (npm)](https://img.shields.io/jsdelivr/npm/hy/capslockx)

[![Chocolatey version](https://img.shields.io/chocolatey/v/capslockx)](https://community.chocolatey.org/packages/CapsLockX/)
[![Chocolatey Publish](https://github.com/snolab/CapsLockX/actions/workflows/choco-push.yml/badge.svg)](https://github.com/snolab/CapsLockX/actions/workflows/choco-push.yml)
[![Chocolatey Downloads](https://img.shields.io/chocolatey/dt/CapsLockX)](https://community.chocolatey.org/packages/CapsLockX/)

<!-- [![Packages Test](https://github.com/snolab/CapsLockX/actions/workflows/package-test.yml/badge.svg)](https://github.com/snolab/CapsLockX/actions/workflows/package-test.yml) -->

---

## Why?

CapsLockX was created to address several common frustrations that many computer users face on a daily basis. Here are some of the main reasons why CapsLockX exists:

1. **Efficient Window Management**: Modern computer usage often involves juggling multiple windows and virtual desktops, especially for professionals working on complex projects. CapsLockX provides intuitive hotkeys for managing virtual desktops and windows, making it easy to switch between tasks seamlessly without losing focus.

2. **Enhanced Text Editing**: Moving between the typing area and the editing control area can be cumbersome, especially for heavy typists or programmers. CapsLockX introduces Vim-like keybinds and other enhancements that allow for efficient text navigation and editing directly from the keyboard.

3. **Mouse Simulation**: Constantly switching between the keyboard and the mouse can disrupt workflow and lead to repetitive strain injuries (RSI). CapsLockX solves this by enabling comprehensive mouse emulation using the keyboard, allowing users to perform mouse actions with simple key combinations.

4. **Streamlined Shortcut Management**: Different applications often have their own sets of shortcuts, which can be hard to remember or inefficiently placed. CapsLockX provides a unified way to enhance and customize hotkeys within various applications, allowing for a more cohesive and efficient working environment.

5. **Mathematical Expression Calculation**: For users who frequently need to perform calculations, CapsLockX offers a way to quickly evaluate JavaScript mathematical expressions directly from the keyboard, streamlining workflows that involve frequent calculations.

6. **Multifunctional Customization**: CapsLockX is modular and highly customizable, allowing users to tailor the hotkey scripts to their specific needs. Whether you need specific functions for coding, writing, designing, or managing tasks, CapsLockX can be adapted to meet those requirements.

7. **Portable and Open Source**: CapsLockX is designed to be a portable tool that can be easily transferred and used across different systems. As an open-source project, it also provides transparency and community-driven improvements, ensuring that the software remains secure and continuously enhanced.

In summary, CapsLockX aims to make computer interaction more efficient, ergonomic, and customized to individual workflows, helping users operate like a **hacker** in movies, quickly achieving their tasks without breaking concentration.

## Beginner's Quick Start Tutorial 📖 Tutorial

### Simple Quick Start Tutorial (Completion of this section is considered the beginning of mastering CapsLockX)

CapsLockX has four core functions: **window management**, **mouse emulation**, **arrow key emulation**, and application-specific hotkeys. This beginner tutorial will teach you the first three core functions.

First, get CapsLockX: download this zip file: [Download JSDelivrCDN - Release Package.zip](https://cdn.jsdelivr.net/gh/snolab/CapsLockX@gh-pages/CapsLockX-latest.zip)

After unzipping, open `CapsLockX.exe` within the CapsLockX folder, get past the simple beginner tutorial, and then try out the following functions in the left and right-hand feature areas to understand the capabilities of CapsLockX.

Once CapsLockX is started, it will **not affect** the functionality of other keys on your keyboard. The following features are triggered only when you press `CapsLockX + combination keys`.

Left-hand feature area:

- Window management: `CapsLockX + 1234567890` switches to the `n`th virtual desktop, `CapsLockX + ZXCV` for window operations (window switching, window closing, window arranging, transparency top-most).
- Mouse emulation function: Press `CapsLockX + WASD` to move the mouse (as simple as moving a character while playing a game), press `CapsLockX + QE` for left and right mouse clicks, `CapsLockX + RF` for scrolling up and down.

Right-hand feature area:

- Arrow key emulation: Open any text editor (such as Notepad), press `HJKL` to move the cursor, `YOUI` to move the page

After familiarizing yourself with the basic features, consult the quick reference guide below for more advanced functionalities.

---

## Advanced Reference Manual 🦽 Manual

### Installation and Use 🛠 Installation

#### Portable Program Package (for beginners, stable version) 📦 Packaged Bins

The source code package is the software itself, no need to compile, just unzip and use the green portable software. Source code + program package, the first one is recommended (the fastest).

1. [Download JSDelivrCDN - Release Package.zip](https://cdn.jsdelivr.net/gh/snolab/CapsLockX@gh-pages/CapsLockX-latest.zip)
2. [Alternative Download CloudFlareCDN - Release Package.zip](https://capslockx.snomiao.com/CapsLockX-latest.zip)
3. [Alternative Download GitHub - Release Package.zip](https://github.com/snolab/CapsLockX/raw/gh-pages/CapsLockX-latest.zip)
4. [Alternative Download GitHub - Repository Program Package.zip](https://github.com/snolab/CapsLockX/archive/master.zip)
5. [Alternative Download BitBucket - Repository Program Package.zip](https://bitbucket.org/snomiao/capslockx/get/master.zip)
6. [Alternative Download for Mainland China Users - Gitee - Repository Program Package.zip (login required)](https://gitee.com/snomiao/CapslockX/repository/archive/master.zip)

You can use it after unzipping. Methods to start and set to auto-start: Double-click `CapsLockX.exe` to start the script. To add a startup item, enter shell:startup in the start menu - run, then create a shortcut for this program, and throw it in.

#### Command Line Installation (recommended for advanced users, can be updated automatically) 🖥️ Install by command

Choose any of the following, the 4th one is recommended for users in mainland China

1. `npx capslockx@latest`, -- Directly run with NPX, always run the latest version, recommended (requires installation of NodeJS)
2. `choco update capslockx && capslockx` -- Use [Chocolatey](https://community.chocolatey.org/packages/CapsLockX/) to install and use cup for automatic updates, recommended
3. `npm i -g capslockx && npx capslockx` -- npm global installation
4. `git clone https://gitee.com/snomiao/CapslockX && .\CapsLockX\CapsLockX.exe` -- Mainland China source code package (green software package) unzip and use, recommended for mainland China users
5. `git clone https://github.com/snolab/CapsLockX && .\CapsLockX\CapsLockX.exe` -- GitHub source code package (green software package) unzip and use
6. `winget capslockx` -- TODO #40
7. `scoop capslockx` -- TODO #41

## User Manual 📖 - Usage Manual

### Basic Operations

- Hold down `CapsLockX` to enter CapsLockX mode, at which point your keyboard will become a functional keyboard like the default mode of Vim (see key positions below).
- Press `CapsLockX+Space` at the same time to lock `CLX` mode, where `CLX` will be maintained until `CapsLockX` is pressed again next time. [Origin of Function](https://github.com/snolab/CapsLockX/issues/21)

### Module Description

CapsLockX by default loads some commonly used modules. The features and how to use them are listed below.
If you don't need certain modules, you can also directly delete the `.ahk` files in the `./Modules` directory, and then press `Ctrl + Alt + \` to reload.

You can also write your own `my-ahk.user.ahk` and put it in the `./User/` directory, and CapsLockX will automatically recognize and load them.

### Nightmares of Multitasking

#### Virtual Desktop Overview: Scenario Modes, Work Desks, Entertainment Desks, Project Categories...

Typically, a set of tasks a user is currently performing will include multiple windows. These windows combined can constitute a usage scenario, while multiple scenarios are likely to run at the same time, and some of them will run for a long time, without interference. This will involve a lot of window arrangement and virtual desktop switching operations, in these aspects, using CLX to manage your windows will bring a terrifying efficiency improvement.

Below are some examples of scenario combinations: Suppose you can study, work on several different jobs, chat with friends, play games, listen to BGM in the background, and have a paused movie ready to watch with family in the evening.

- Virtual desktop 1: Planning scenario: Schedule window + Multi-platform sync notes, e.g.: Google Calendar + Notion + Gmail.
- Virtual desktop 2: Learning scenario: Book reading window, note-taking window, e.g.: OneNote + Calibre, etc.
- Virtual desktop 3: Work scenario 1 (Front-end Development): Code editing + Documentation querying + Browser, e.g.: Chrome(dev) + VSCode + [stackoverflow](https://stackoverflow.com), etc.
- Virtual desktop 4: Work scenario 2 (Back-end Development): Code editing + Documentation querying + Backend terminal + Database browser, e.g.: DBeaver + VSCode(+bash) + [stackoverflow](https://stackoverflow.com), etc.
- Virtual desktop 5: Work scenario 3 (Script Development): Code editing + Documentation querying + Script target, e.g.: VSCode(+bash) + [stackoverflow](https://stackoverflow.com) etc.
- Virtual desktop 6: Work scenario 4 (3D Modeling and Rendering): 3D modeling software + Material searching, e.g.: Blender + Chrome.
- Virtual desktop 7: Work scenario 5 (3D Printing Slicing): Slicing software + Model searching window, e.g.: Cura + [thingiverse](https://thingiverse.com)
- Virtual desktop 7: Work scenario 6 (Video Processing): Editing + Material management, e.g.: PR + Everything.
- Virtual desktop 7: Work scenario 7 (Video Processing): Post-production + Documentation tutorial, e.g.: AE + Chrome.
- Virtual desktop 8: Writing scenario: Writing window, material referencing window, e.g.: Obsidian + Chrome (Google Scholar Index), etc.
- Virtual desktop 9: Communication scenario 1: Casual chats, e.g.: Telegram + Reddit + .
- Virtual desktop 9: Communication scenario 2: Work communication, e.g.: Slack + Skype + Gmail.
- Virtual desktop 9: Communication scenario 3: Presentation, e.g.: Google Meeting + (Vscode | Page application | Requirements document | Feedback document).
- Virtual desktop 0: Entertainment scenario 1: Playing games, e.g.: Age of Empires, Minecraft, Skyrim, Overcooked 2, etc.
- Virtual desktop 0: Entertainment scenario 3: Watching movies, listening to songs, e.g.: PotPlayer, Youtube Music, etc...
- ... More examples are welcome. Provide Issues or PRs for supplementation.

Snowstar does not recommend you handle too many tasks at the same time, but CapsLockX can save your thinking environment, greatly reducing the mental cost you incur during task switching, that is, saving you a lot of time rearranging windows and the resulting loss of attention.

(Note: If you like to handle many tasks at the same time, you might need not only a computer with not a small amount of memory but also a brain of significant capacity :D )

#### Enhancing the User Experience of Windows Window Switching - Win+Tab

When switching windows with Alt+Tab, if there are too many windows, a two-dimensional window pre-arrangement display will show up.
Generally speaking, Alt+Tab and Alt+Shift+Tab are purely left-handed keystrokes. If the user wants to select the window in the next line, they will instinctively press Alt+Tab many times.
However, the directional keys used for two-dimensional operations are often ignored because the right hand is usually on the mouse or on the J key.

Also, users will continue to hold down the Alt key after releasing the Tab key to browse the windows and select the target window to switch to.
In CLX, Alt+WASD will be used instead of the arrow keys to perform multiline window switching directly with the left hand, so there is no need to press Shift to go back to the left.
Moreover, if a user needs to clean up or close multiple windows, they simply press Alt+X to batch clean multiple target windows while remaining within the window browsing interface.

In CLX, these features greatly improve the usability of Alt+Tab.

## TODO-Docs

<details>
<summary>Click to expand TODO-docs</summary>

#### Focus count: Active window, default active window, …

Each desktop has only one active focus window, and the virtual desktop can achieve automatic switching to the focus window of that virtual desktop when switching to it, achieving multiple task focuses (i.e., active windows).

#### Utilizing Multiple Screens - Multi-screening

#### Window Arrangement in the Era of 4K - Window arrange with 4k screen

Default window arrangement limitations in Windows 10:

1. Not applicable to multiple desktops.
2. Unnecessary window gaps are too large.

##### Window Management on Linux and Mac - Window Manager in Linux and mac

TODO: i3 Window Management

##### Window Management on Android and iOS - Window Manage in android

Two system-level solutions: Left-right top-bottom split screen, floating windows; Application level: floating components,

### Troubles with Editing Operations

#### The Distance Between the Typing Area and Editing Control Area

TODO Discussion on ThinkPad and Mac arrow keys, inspiration from VIM,

### Human Perception of Speed

TODO: World perception of exponential growth, focus, auditory, visual, tactile, VS conventional linear operations

### Troubles with the Graphical User Interface

TODO: Document: Introduction to mouse simulation function, movement in RPG games

### Shortcut Deficiencies in Software

TODO: Application enhancement module introduction

### The Usability of Portable Keyboards

TODO: FN key, arrow keys, editing operations, 61-key layout vs 87-key layout,

#### The Concept of Chording

TODO Various types of chording
TODO Calculation of information quantity increase with chording

</details>

## Module Helps

<!-- The stuff below is automatically extracted from various modules. To make changes, please operate within the corresponding module.md files, as any changes made here will be overwritten. -->
<!-- MODULE_HELP_BEGIN -->
<!-- MODULE_FILE: @Help.ahk-->

### Help Module

If you want to learn how to develop a plugin for CapsLockX, please:

1. Open `Modules/@Help.ahk`, where you can learn about the basic format of a CapsLockX plugin.
2. Make a copy of it and rename it to your own plugin name.
3. Change its original functionality to the functionality you need. And your plugin development is complete!

#### See the functions of this module below

| Applies to | Key                  | Function                           |
| ---------- | -------------------- | ---------------------------------- |
| Global     | CapsLockX + /        | Temporarily display hotkey hints   |
| Global     | CapsLockX + Alt + /  | 🔗 Open the full documentation page for CapsLockX |
| Global     | CapsLockX + Shift + /| 🕷 Submit bugs, suggestions, etc.   |

<!-- MODULE_FILE: App-AnkiEnhanced.ahk-->

### Anki Enhancement Module

Anki Operation Enhancement

#### Common Features

1. Use WASD or HJKL for fast consecutive toggling of flashcards (with undo capability)
2. Create a word list in Excel with 2 columns, select all and copy, then press Alt + i in Anki to quickly import the word list.
3. Simplify four options to three arrow keys: left for easy, down for medium, right for hard, and up for undo.
4. Can be used with a gamepad by configuring the analog stick with XPadder to map to arrow keys. For more, see bilibili [Chuunibyou Snow Star How to Memorize Words - Why Use a Gamepad to Memorize Words?](https://www.bilibili.com/video/av8456838/)

#### Description

| Mode                | Anki Enhancement Module | Description                                                |
| ------------------- | :---------------------: | ---------------------------------------------------------- |
| In Anki Study Mode  | `w or k or ↑`           | Press to undo, release to show answer                      |
| In Anki Study Mode  | `a or h or ←`           | Press to proceed smoothly, release to show answer          |
| In Anki Study Mode  | `s or j or ↓`           | Press for average, release to show answer                  |
| In Anki Study Mode  | `d or l or →`           | Press for hard, release to show answer                     |
| In Anki Study Mode  | `q`                     | Return to the previous screen                              |
| In Anki Study Mode  | `c`                     | Add new card                                               |
| In Anki Study Mode  | `1 or NumPad1`          | Hard (original key)                                        |
| In Anki Study Mode  | `2 or NumPad2`          | Hard (original key)                                        |


<!-- MODULE_FILE: App-OneNote2019.ahk-->

### OneNote 2016 - 2019 Enhancements

Enhance OneNote 2016 - 2019 keyboard operations with ease, allowing you to switch pens, make links, organize pages, adjust views conveniently with the keyboard...

#### Common Features by Xue Xing Miao

1. When logging, use `Alt + T` on the note page to add a date tag to the note title (for future searches), then globally `Win + Shift + N` to search for all notes with today's tag in OneNote. This makes it easy to retrieve your daily: love diary, training log, daily reading list, project daily report... In short, writing a diary in OneNote becomes very convenient, just press and it appears, no need to search XD.
2. Select a word and press `Alt + K`, which will list all related page links below the word, used to create an index catalog, weaving your OneNote into a network.
3. Create a new note named `My Clipboard`, and when you copy text or images, CLX will automatically append them to this note for easy collection of materials or articles.
4. Use Alt + 1234567 to collapse levels, allowing easy switching of thought processes at different abstraction levels.

#### Key Distribution Design (Under Development)

| Key Description           | Function                  | Remarks     |
| ------------------------- | ------------------------- | ----------- |
| `All OneNote Built-in Hotkeys` | Original Function        |             |
| `Press Alt then Something Else` | Trigger OneNote Original Menu Function | |
| `Alt + 1234567`           | Outline Folding to Levels 1-7 |             |
| `Alt + qwe asd r`         | Tools, Switch Pen, View   |             |
| `Alt + f`                 | Find Tag                  |             |
| `Alt + -=`                | Formula Related           |             |
| `Alt + m`                 | Move Note, Section        |             |
| `Alt + hjkl`              | Various Linking Functions |             |
| `Alt + zxcv`              | Advanced Copy and Paste   | In Development |
| `Alt + /`                 | Hotkey Help, Tips         | In Development |
| `F2 F3`                   | Rename, Find Note         |             |

#### Detailed Key Table / CheatSheet

| Applied To                | Format Hotkeys              | Function                                                                     |
| ------------------------- | ----------------------------| ---------------------------------------------------------------------------- |
| Global                    | `Win + Alt + N`             | Open Quick Notes First Page (compensates for OneNote's lack of a homepage concept like Notion) |
| Global                    | `Win + Shift + N`           | Open OneNote and precisely search today's tag                               |
| OneNote2019               | `Alt + 1234567`             | Outline: Fold and unfold outline to that level (highly recommended, super useful) |
| OneNote2019               | `F2`                        | Organize: Rename note                                                       |
| OneNote2019               | `Shift + F2`                | Organize

<!-- MODULE_FILE: App-XunFeiSwitching.ahk-->

### iFly Input Method Floating Window Plugin

#### Usage

| Applies to |    Key     | Function Description     |
| ---------- | :--------: | ------------------------ |
| Global     | Win + Alt + H | Launch/Switch iFly Voice Input |

#### Notes

1. If iFly Voice is not installed, it will automatically ask whether to guide you through the download and installation.

#### The effect is shown in the picture below

![App-iFly Voice Input Method Floating Window Demo.gif](./docs/media/App-讯飞语音输入法悬浮窗演示.gif)

<!-- MODULE_FILE: CLX-Brainstorm.ahk-->

### CLX - Brainstorm Cerebral Storm

Anytime, in any input box, press the `CLX+b` key to start using AI-assisted input.

#### Key Configuration (In Development)

| Key Description  | Function                                          | Note |
| ---------------- | ------------------------------------------------- | ---- |
| CLX + b          | Automatically copies the currently selected content, inputs command, and lets AI assist your input |      |
| CLX + Alt + b    | Configure activation code (currently only a free plan, potential enhancements in the future) |      |
| CLX + Shift + b  | Check usage quota                                 |      |

#### Protips:

##### Organize Meeting Notes Anytime

1. In any input box, use Win+H to bring up voice input, then say what you want to type, no need to worry about the accuracy of voice input, just convey the general idea,
2. Then select all and press `CLX+b`, input `list key points and to-dos`, and you will see the AI automatically organizing the key points and to-do items for you.

##### Translate Any Language to Any Language Anytime

1. In any input box, select the text you want to translate
2. Then select all and press `CLX+b`, `to chinese:` and the AI will automatically translate it into Chinese for you.

<!-- MODULE_FILE: CLX-Edit.ahk-->

### Edit Enhancement Plugin (TG YUIO HJKL) 🌟

Is there anything better than moving the cursor in Vim mode using HJKL in this world? There must be! That's the smooth editing experience of HJKL with acceleration! Want to try a high-end operation like cornering in a drainage ditch with your cursor? Install it!

![EditorCursorMovement.gif](./docs/media/EditorCursorMovement.gif)

| Scope       | Edit Module          | Description                        |
| ----------- | -------------------- | ---------------------------------- |
| Global (Basic) | `CapsLockX + h j k l` | Arrow keys for up, down, left, right |
| Global (Basic) | `CapsLockX + y o`     | Home and End                        |
| Global (Basic) | `CapsLockX + u i`     | PageUp and PageDown                 |
| Global (Basic) | `CapsLockX + [ ]`     | Shift+Tab and Tab                   |
| Global (Basic) | `CapsLockX + g`       | Enter                               |
| Global (Advanced) | `CapsLockX + t`       | Delete                             |
| Global (Advanced) | `CapsLockX + hl`      | Press hl together to select current word |
| Global (Advanced) | `CapsLockX + kj`      | Press kj together to select current line |
| Global (Advanced) | `CapsLockX + h + t`   | Shift and delete: can replace backspace in most cases |

<!-- MODULE_FILE: CLX-LaptopKeyboardFix.ahk-->

### Surface Notebook Extended Function Keys

Specially designed for various broken notebook keyboards

1. No right Ctrl key? Combine Menu and Right Ctrl keys; Menu can be used as Ctrl, or Ctrl can be used as Menu.
2. No Pause key? Win + Alt + P can also open system setup information.
3. To be supplemented

| Mode             | Keys                                  | Function                           |
| ---------------- | :------------------------------------ | ---------------------------------- |
| Global           | Win + Alt + P                         | Equivalent to Win + Pause, tailored for notebooks |
| Global           | Press Right Ctrl once                 | Pressing it will pop up the Menu   |
| Global           | Hold Right Menu                       | It will act as holding Ctrl, allowing combinations with other keys |
| After Win Key Simulation Enabled | ] held down while [ is pressed   | Equivalent to pressing the Win key |
| After Win Key Simulation Enabled | RAlt+\| Equivalent to Alt+Tab but with the right hand |

<!-- MODULE_FILE: CLX-MediaKeys.ahk-->

### Media Key Module

| Scope  | Media Key Module | Description                                       |
| ------ | ---------------- | ------------------------------------------------- |
| Global | `CapsLockX + F1` | Open: My Computer                                 |
| Global | `CapsLockX + F2` | Open: Calculator                                  |
| Global | `CapsLockX + F3` | Open: Browser Home Page                           |
| Global | `CapsLockX + F4` | Open: Media Library (default is Windows Media Player) |
| Global | `CapsLockX + F5` | Play: Pause/Play                                  |
| Global | `CapsLockX + F6` | Play: Previous Track                              |
| Global | `CapsLockX + F7` | Play: Next Track                                  |
| Global | `CapsLockX + F8` | Play: Stop                                        |
| Global | `CapsLockX + F9` | Volume Up                                         |
| Global | `CapsLockX + F10`| Volume Down                                       |
| Global | `CapsLockX + F11`| Mute                                              |

<!-- MODULE_FILE: CLX-Mouse.ahk-->

### Mouse Simulation Plugin (WASD QERF)

> I have always considered myself a keyboard enthusiast, which likely started when I injured my finger joints while building models, leading me to become a heavy keyboard user. I used various keyboard acceleration tools, actively memorized different shortcuts, aimed to use the mouse as little as possible, and even learned vim and emacs. However, often the mouse is irreplaceable, especially when graphical interfaces are prevalent.

— The above is a quote from the author of [SimClick Simulated Click](https://github.com/rywiki/simclick), a project that simulates a mouse using a grid subdivision method and can complement this project.

— Recommended by [Qin Jinwei](http://rsytes.coding-pages.com/)

#### Features

- This module uses the key area: CapsLockX + QWER ASDF
- It allows for a very comfortable use of WASD QE RF to simulate (complete) mouse functionality. Trust me, once you've tried this gesture, you'll grow to like it.
- The pointer automatically adheres to various buttons and hyperlinks when moving. The wheel's exponentially increasing acceleration scrolling mechanism ensures you are no longer intimidated by super-long articles and webpages.
- Effects shown below:
  ![CLX-Mouse.gif](./docs/media/CLX-Mouse.gif)

#### Usage

| Application | Keys                                  | Description                              |
| ----------- | ------------------------------------- | ---------------------------------------- |
| Global      | `CapsLockX + w a s d`                 | Mouse movement (up, down, left, right)   |
| Global      | `CapsLockX + ad`                      | Switch HJKL keys to wheel mode (scroll up, down, left, right) |
| Global      | `CapsLockX + r f`                     | Vertical wheel (up, down)                |
| Global      | `CapsLockX + Shift + r f`             | Horizontal wheel (left, right)           |
| Global      | `CapsLockX + Ctrl + Alt + r f`        | Vertical wheel auto-scroll (up, down)    |
| Global      | `CapsLockX + Ctrl + Alt + Shift+ r f` | Horizontal wheel auto-scroll (left, right) |
| Global      | `CapsLockX + rf`                      | Simultaneously pressing rf acts as the middle mouse button |
| Global      | `CapsLockX + e`                       | Left mouse button                        |
| Global      | `CapsLockX + q`                       | Right mouse button                       |

#### Operational Details

Quickly press AD for step movement.

<!-- MODULE_FILE: CLX-NodeEval.ahk-->

### JavaScript Calculation (Recommended to install NodeJS)

| Applies To | Key            | Effect                                  |
| ---------- | -------------- | ----------------------------------------|
| Global     | `CapsLockX + -`| Evaluate the current selection in JavaScript and replace it |
| Global     | `CapsLockX + =`| Evaluate the current selection in JavaScript and replace it |

<!-- MODULE_FILE: CLX-WindowManager.ahk-->

### Window Enhancement Plugin (CLX + 1234567890 ZXCV)

#### Brief Overview

Make good use of the 10 virtual desktops included in Win 10's deluxe configuration, automatically arrange windows on multiple monitors, keep windows semi-transparent and on top (Note: Taskbar and AltTab related features are not yet compatible with Win11, but window arrangement features function normally.)

1. Window Switch: `CapsLockX + [Shift] + Z`
2. Close Window: `CapsLockX + [Shift] + X`
3. Arrange Window: `CapsLockX + [Shift] + C`
4. Pin Window: `CapsLockX + [Shift] + V`
5. Left-hand Window Management: In the `Alt + Tab` interface, use `WASD` to switch windows, `X` to close windows.
6. Efficient Use of Virtual Desktops: `CapsLockX + 0123456789` to switch, add or reduce virtual desktops, hold `Shift` to transfer the current window.
7. Quick Detachment of Virtual Machines and Remote Desktop: Double-click the left `Shift + Ctrl + Alt`.

#### Screenshot Effects

- Enhanced window management with Alt + Tab
  ![02-Plugin-Window Enhancement_Alt+Tab+WASD Management.gif](./docs/media/02-Plugin-Window Enhancement_Alt+Tab+WASD Management.gif)
- `CapsLockX + C` to One-Click Arrange Windows (This GIF was recorded with the old version which looks laggy, the new version has optimized the API so it's not laggy.)
  ![02-Plugin-Window Enhancement_One-Click Arrange Windows.gif](./docs/media/02-Plugin-Window Enhancement_One-Click Arrange Windows.gif)

#### Usage Instructions (Alt+Tab and CapsLockX)

| Scope        | Window Enhancement Module             | Description                                  |
| ------------ | ------------------------------------- | -------------------------------------------- |
| Alt+Tab Interface | `Q E`                             | Switch desktops left or right                |
| Alt+Tab Interface | `W A S D`                         | Switch window selection up, down, left, right|
| Alt+Tab Interface | `X C`                             | Close selected window (currently no difference between X and C) |
| Win+Tab View | `Alt + W A S D`                       | Switch window selection                      |
| Global       | `Win + [Shift] + B`                   | Locate to tray tasks (Windows system hotkey) |
| Global       | `Win + [Shift] + T`                   | Locate to taskbar tasks (Windows system hotkey) |
| Global       | `Win + Shift + hjkl`                  | Switch focus among windows in the direction  |
| Taskbar      | `Ctrl + W or Delete`                  | Select exit button on tray icons or taskbar tasks |
| Global       | `CapsLockX + 1 2 ... 9 0`             | Switch to the 1st .. 12th desktop            |
| Global       | `CapsLockX + Shift + 1 2 ... 9 0 - =` | Move current window to the nth desktop (if any) |
| Global       | `CapsLockX + Alt + Backspace`         | Delete current desktop (moves all windows to the previous desktop) |
| Global       | `CapsLockX + C`                       | Quickly arrange windows on the current desktop |
| Global       | `CapsLockX + Ctrl + C`

<!-- MODULE_FILE: QuickInput.ahk-->

### Quick Input

| Mode | Quick Input | Description                                     |
| ---- | ----------- | ----------------------------------------------- |
| Global | `#D#`     | Date input: `(20220217)`                        |
| Global | `#T#`     | Time input: `(20220217.220717)`                 |
| Global | `#DT#`    | Date and time input: `2022-02-17 22:07:33`      |
| Global | `#NPW#`   | Random input numeric password such as: `7500331260229289`         |
| Global | `#PW#`    | Random input alphanumeric password such as: `yyCTCNYodECTLr2h`    |
| Global | `#WPW#`   | Random input alphanumeric password such as: `FtD5BB1m5H98eY7Y`    |
| Global | `#SPW#`   | Random input alphanumeric-symbol password such as: `/})y+xK]z~>XKQ+p` |

<!-- MODULE_FILE: TomatoLife.ahk-->

### Pomodoro Timer

25-minute fixed loop break reminder.

Use `CapsLockX + ,` to open the configuration, then modify EnableScheduleTasks=1 to enable this plugin.

- Use the Pomodoro time announcement (plays work chime at 00 and 30 minutes, and break chime at 25 and 55 minutes of every hour) (requires scheduled tasks to be enabled first)

  ```ini
  UseTomatoLife=1
  ```

- When using the Pomodoro time announcement, automatically switch desktops (rest desktop is 1, work desktop is 2)

  ```ini
  UseTomatoLifeSwitchVirtualDesktop=1
  ```

Note: If you only want the sound and do not need to switch desktops automatically, you might also try this Chrome plugin [Tomato Life - Chrome Web Store](https://chrome.google.com/webstore/detail/25min-tomato-life/kkacpbmkhbljebmpcopjlgfgbgeokbhn)

Note: This plugin has been separated into an independent project. If you like the Pomodoro Technique, you can refer to Xuexing's tomato-life project: [snomiao/tomato-life](https://github.com/snomiao/tomato-life)

<!-- MODULE_FILE: TurnOffScreenWhenLock.ahk-->

### Auto Screen Off with Screen Lock

When pressing Win + L to lock the screen, it immediately turns off the screen. This is useful for automatically turning off the computer screen when getting ready to sleep, preventing it from being glaring during the night...
Press Win + Alt + L to immediately turn off the screen, useful for turning off the computer screen when getting ready to sleep, preventing it from being glaring during the night...

<!-- MODULE_HELP_END -->

## Past and Future 🛰

### Production Background (Autumn of 2017) 🍁 Background

> I often write code…
> At first, I was used to using the mouse with my right hand... later I found it a bit far to put the mouse on the right... so I switched to using the mouse with my left hand.
> After switching to the left hand, I realized I still had to take it off the keyboard... so I made a script that simulates the mouse with the WASD keys. (Then I could keep playing with the computer with my right hand under my chin)
> Later I wrote more and more scripts and put some of the common ones together to load...

### Development RoadMap 🛰️ RoadMap

The core philosophy of CapsLockX is to simplify system operation logic, improve operation efficiency, and not conflict with existing habitual key positions.

1. [x] Press CapsLockX + - key to display corresponding help (the current display style is quite rough)
2. [ ] i18n (eh this really should exist)
3. [ ] Auto-update (although git pull is also fine)
4. [ ] Tutorial for first-time users (this is a bit simple now...)
5. [ ] Plugin manager (although the file system could handle it too)
6. [ ] Auto-sync of configuration (though throwing it in OneDrive is usually enough)
7. [ ] A user-friendly options configuration UI (though changing ini isn't that hard)
8. [ ] Execute external code (Python, Nodejs, external AHK, Bash, …) (although running a script isn't much trouble)

If you have any ideas or suggestions, please propose them here:
[Issues · snomiao/CapslockX](https://github.com/snolab/CapsLockX/issues)

### Key Combination Meaning Design ⌨ Chore Design

Win + series are generally used for operating system functions, desktop window application process management, input method, output device (display, multiple screens) management.

Alt + series typically denote invocation of application internal functions, their meanings should be equivalent to pressing the same function button, or jumping to a specific function interface.

Ctrl + series as above, but used more frequently and it's very likely that there is no button with the same function.

Ctrl + Alt + same as above, but generally for global hotkeys.

The Shift key is used to slightly change the meaning of the above functions (such as reverse operations like Shift+Alt+Tab, or extended function range like Shift+Arrow keys to adjust the selection, etc.)

## Compares

### CapsLockX vs. Similar Projects Function Comparison ⚔ Feat Compare Matrix

Updated (20200627) The information may become outdated over time

| Feature\Project                 | [CapsLockX](https://github.com/snolab/CapsLockX) | [Vonng/CapsLock](https://github.com/Vonng/CapsLock) | [coralsw/CapsEz](https://github.com/coralsw/CapsEz) | [CapsLock+](https://capslox.com/capslock-plus/) |
| :------------------------------ | :----------------------------------------------- | :-------------------------------------------------- | :-------------------------------------------------- | :---------------------------------------------- |
| Mouse Simulation                | ✅ Smooth and complete                           | ✅ No scroll wheel                                  | 🈚 None                                             | 🈚 None                                         |
| Expression Calculation          | ✅ Nodejs or JScript                             | 🈚 None                                             | 🈚 None                                             | ✅ TabScript (Snippet + Javascript)             |
| Window Management               | ✅ Strong                                        | ✅ Available                                        | ✅ Available                                        | ✅ Strong                                       |
| Virtual Desktop Management      | ✅ Available                                     | 🈚 None                                             | 🈚 None                                             | 🈚 None                                         |
| Editing Enhancement             | ✅ Available (parabolic model)                   | ✅ Available                                        | ✅ Available                                        | ✅ Very comprehensive                           |
| Portable (No Install)           | ✅ Yes                                           | ✅ Yes                                              | ✅ Yes                                              | ✅ Yes                                          |
| Enhanced Media Keys             | Not all                                          | ✅ All                                              | 🈚 None                                             | 🈚 None                                         |
| Enhanced Clipboard              | Weak                                             | 🈚 None                                             | 🈚 None                                             | ✅ Available                                    |
| Quick Application Launch        | ✅ Plugins                                       | ✅ Available                                        | ✅ Available                                        | ✅ Available                                    |
| Application Feature Enhancement | ✅ Rich                                          | 🈚 None                                             | ✅ Available                                        | 🈚 None                                         |
| Bash Control                    | 🈚 None                                          | ✅ Available                                        | 🈚 None                                             | 🈚 None                                         |
| Quick Start Voice Input         | ✅ iFLYTEK                                       | 🈚 None                                             | 🈚 None                                             | 🈚 None                                         |
| Quick Input of Time and Date    | ✅ Available                                     |                                                     | ✅ Available                                        |                                                 |
| Bind Window to Hotkey           | 🈚 None                                          | 🈚 None                                             | 🈚 None                                             | ✅ Available                                    |
| Quick Screen Rotation           | ✅ Available                                     | 🈚 None                                             | 🈚 None                                             | 🈚 None                                         |
| Secondary Development           | ✅ Documentation friendly                        | ✅ Possible                                         | ✅ Possible                                         | ✅ Possible                                     |
| Memory Usage                    | ✅ About 2~3M                                    |                                                     |                                                     |                                                 |
| Modularization                  | ✅                                               | 🈚 None                                             | 🈚 None                                             | 🈚 None                                         |
| System                          | Win                                              | Mac (main), Win (secondary)                         | Win                                                 | Win, [Mac](https://capslox.com/)                |
| Supported Languages             | English / Chinese / Any Language (by ChatGPT)    | Chinese / English                                   | Chinese                                             | Chinese / English                               |

### CapsLockX Address 🔗 Project Urls

The following repositories are updated synchronously:

- GitHub: [https://github.com/snolab/CapsLockX](https://github.com/snolab/CapsLockX)
- Gitee: [https://gitee.com/snomiao/CapslockX](https://gitee.com/snomiao/CapslockX)
- Bitbucket: [https://bitbucket.org/snomiao/capslockx](https://bitbucket.org/snomiao/capslockx)
- Gitlab: [https://gitlab.com/snomiao/CapsLockX/](https://gitlab.com/snomiao/CapsLockX/)

Document Address 📄

- Automatic Translation Document Netlify CDN: [https://capslockx.netlify.com](https://capslockx.netlify.com)
- Automatic Translation Document CloudFlare CDN: [https://capslockx.snomiao.com](https://capslockx.snomiao.com)

Star Chart ⭐️

- [![Stargazers over time](https://starchart.cc/snolab/CapsLockX.svg)](https://starchart.cc/snolab/CapsLockX)

### Similar Project Addresses 🔗 Similar Projects

- [Star Historys](https://star-history.t9t.io/#snolab/CapsLockX&wo52616111/capslock-plus&coralsw/CapsEz&Vonng/CapsLock)
- Source: [Vonng/CapsLock: Make CapsLock Great Again!](https://github.com/Vonng/CapsLock)
  Design: [Capslock/design.md at master · Vonng/Capslock](https://github.com/Vonng/Capslock/blob/master/design.md)
- [coralsw/CapsEz: KeyMouse Tools](https://github.com/coralsw/CapsEz)
- [CapsLock+](https://capslox.com/CapsLock-plus/)
- [Capslox](https://capslox.com/cn/)
- CapsLock++ [matrix1001/CapsLock-plus-plus: ⌨Amazing, extendable, readable autohotkey scripts framework utilized by CapsLock.](https://github.com/matrix1001/CapsLock-plus-plus)
- [Power Keys | Liberate Computer Usage Efficiency](https://powerkeys.github.io/)

## Questions and Answers ❓ Questions

Related Communities:

- [CapsLockX's issues (can be used as a forum)](https://github.com/snolab/CapsLockX/issues) ✉️
- CapsLockX User Telegram Group: [t.me/CLX_users](https://t.me/CLX_users)📱
- CapsLockX User QQ Group 🐧: [100949388](https://jq.qq.com/?_wv=1027&k=56lsK8ko)
- QZ/VimD/TC/AHK QQ Group 🐧: 271105729
- AHK Advanced QQ Group 🐧: 717947647
- The Little Red Dot mechanical keyboard group 🐧: 199606725

For questions related to CapsLockX, you can directly join the group [@雪星](tencent://message?uin=997596439) or ask privately.

### Privacy and Security 🔒 Privacy

Considering that any software that can obtain administrative rights is quite dangerous to a user's operating system, CapsLockX must and is currently adopting an open-source approach. This allows the community to freely and arbitrarily inspect any part of the CapsLockX code that may be involved, to ensure that the security of all users' operating systems is not compromised by this software.

## Support ⭐️ Supports

How to help CapsLockX survive? If CapsLockX has been helpful to you:

1. ⭐️ Please star CapsLockX on Github <a class="github-button" href="https://github.com/snolab/CapsLockX" data-color-scheme="no-preference: light; light: light; dark: dark;" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star snolab/CapsLockX on GitHub">Star</a>
2. 🔗 Please share it with your friends.
3. 🌐 Welcome to help translate this documentation into different languages.
4. 🐞 Welcome to submit bugs and suggestions for improvement [issues](https://github.com/snolab/CapsLockX/issues)
5. Code PR submissions are welcome, even just to correct a typo ～
6. Welcome to create works about this software, such as recording tutorial videos to post on Youtube or Bilibili, Xue Xing will like your video.
7. 💰 Welcome to donate to the development of CapsLockX, each donation will be recorded in the list below:
   - Aifadian ⚡️：[https://afdian.net/@snomiao](https://afdian.net/@snomiao)
   - PAYPAL: [https://paypal.me/snomiao](https://paypal.me/snomiao)
   - Alipay donation [snomiao@gmail.com （click to view QR code）](./docs/支付宝捐助.png)
   - Wise donation [snomiao@gmail.com](https://wise.com/pay/r/vPlWg3Mh4zhabUk)
   - [CapsLockX - Open Collective]( https://opencollective.com/capslockx )
   - ETH： [0xdc2eece11a9e09c8db921989e54b30375446e49e](https://etherscan.io/address/0xdc2eece11a9e09c8db921989e54b30375446e49e)

- [Development Roadmap](#发展路线-roadmap)

### Donation Records (as of 20210821) 📄 Donate Records

| Donation Date | Name                             | Channel         | Amount      | Comment                                                        |
| ------------- | -------------------------------- | --------------- | ----------- | -------------------------------------------------------------- |
| 2021-06-19    | \*\*Yu                           | Alipay QR       | +50.00 CNY  | A little support, in favor of independent developers           |
| 2023-05-12    | Karawen                          | WeChat Transfer | +200.00 CNY | 🫡 (Salute)                                                     |
| 2023-06-09    | [@andriasw](github.com/andriasw) | Alipay Transfer | +66.66 CNY  | for CapsLockX-mac, 66.66 is good (https://github.com/andriasw) |
| 2023-12-19    | Huidan                           | QQ Red Packet   | +45.00 CNY  | Buy the developer a coffee                                     |

### Acknowledgements 🙏🏻 Thanks

- Thank you for the financial support from the above donors.
- Thanks to [Qin Jinwei](http://rsytes.coding-pages.com/) for the citation recommendation article and development suggestions: [2020-02-23 When Keyboard Simulates Mouse - Jianshu](https://www.jianshu.com/p/f757f56a7de6)
- Thanks to @He Xuren for helping with the dissemination: [CapsLockX – Operate the computer like a hacker! 【Xue Xing】 – AutoAHK](https://www.autoahk.com/archives/34996)
- Thank you to those who asked questions in the issues and in the group and helped to improve CapsLockX.

### Related Topics for References

- [秦金伟](http://rsytes.coding-pages.com/)
  - [2020-02-23 当键盘模拟鼠标 - qwertc](https://mp.weixin.qq.com/s?__biz=MzIzNzczOTkzMw==&mid=2247483745&idx=1&sn=16f16c1fa02e1ef386a83f3023fb109d&chksm=e8c54b93dfb2c285e49fa8045d2380b20810768e3be043f364be146a598faf5f363bbb2623e7&scene=21#wechat_redirect)
  - [2020-10-26 键盘模拟鼠标 2 - qwertc](https://mp.weixin.qq.com/s?__biz=MzIzNzczOTkzMw==&mid=2247484272&idx=1&sn=0ed1ff91bee008fc5c01dc0fe20e53ba&chksm=e8c54982dfb2c09493c88a0f7847ffb0b508598e0756ddd7e8ad94d1f31f65490388d6cff7a4&scene=21#wechat_redirect)
  - [2021-03-11 capslockX-治愈鼠标手 - qwertc](https://mp.weixin.qq.com/s?__biz=MzIzNzczOTkzMw==&mid=2247484478&idx=1&sn=1518d7ec4dc08c1a72c08fcaff98550e&chksm=e8c54eccdfb2c7daed0ad9b8c03395e4211e029199374f4bc0dbdc9a8403c2dae86b740c95c5&scene=21#wechat_redirect)
  - 2021 年 11 月，键盘模拟鼠标 3
  - [2022-08-21 t0820 复制后匹配-siyuan-clx-截图 - qwertc](https://mp.weixin.qq.com/s?__biz=MzIzNzczOTkzMw==&mid=2247485441&idx=1&sn=848d5e6f3fb7c1e7b14100615ca7d0db&chksm=e8c542f3dfb2cbe5770fe19bb8b5c81935e52a4a686154e69104bc403ab6ce960d1b6ae429a9&scene=21#wechat_redirect)
  - [2024-01-06 t0106 OpenAI 加持的 CapslockX - qwertc](https://mp.weixin.qq.com/s?__biz=MzIzNzczOTkzMw==&mid=2247485707&idx=1&sn=d40eea9f0b5bb81e3387ec592def4ed0&chksm=e8c543f9dfb2caef90939e2fafcb324fd757949c79399c55adfbab0940e70efd753fb6bf3837&token=1464360155&lang=zh_CN#rd)
- V2EX:
  - [有没有办法将 Chrome OS 中的快捷键实现到 Windows 10 中 - V2EX](https://www.v2ex.com/t/778967)
  - [推荐一下我的键位映射工具 MyKeymap - V2EX](https://v2ex.com/t/844432)
  - [有多少人会把键盘上的 CapsLock 和 Backspace 对调？ - V2EX](https://www.v2ex.com/t/855901)
  - [分享一个用 CapsLock+H/J/K/L 模拟方向键的小工具 - V2EX](https://www.v2ex.com/t/318182)
  - [推荐一个适合程序员的效率工具 AltPlus，左边大拇指按下 Alt 键,就可以像使用 vim 一样编程了. - V2EX](https://www.v2ex.com/t/800721)
  - [CapsLockX - 像黑客一样操作电脑 - V2EX](https://v2ex.com/t/772052#reply1)
- Zhihu:
  - [如何将电脑桌面划分为独立的两半？ - 知乎](https://www.zhihu.com/questionz/23443944/answer/1670521971)
  - [有哪位残友用的是单手键盘？ - 知乎](https://www.zhihu.com/question/50621709/answer/1681247637)
  - [怎么样才能只用键盘不用鼠标，包括任何指针触控设备，并优雅地使用电脑？ - 知乎](https://www.zhihu.com/question/21281518/answer/1770669886)
  - [如何将电脑桌面划分为独立的两半？ - 知乎](https://www.zhihu.com/question/23443944/answer/1670521971)
  - [我是职场达人，AutoHotKey 让我成为职场超人 - 知乎](https://zhuanlan.zhihu.com/p/60372361)
  - [为什么知乎上这么多人推荐 HHKB，却不反复强调说该键盘不适合大多数程序员？ - 知乎](https://www.zhihu.com/question/33690121/answer/3495460336)
- AutoAHK:
  - [AutoHotKey 中文网专栏 - 知乎](https://www.zhihu.com/column/autoahk)
  - [我是职场达人，AutoHotKey 让我成为职场超人 – AutoAHK](https://www.autoahk.com/archives/14636)
  - [脱胎于 CapslockX 的雪星鼠标-键盘模拟鼠标 – AutoAHK](https://www.autoahk.com/archives/44126)
  - [QZ——Arrary – AutoAHK](https://www.autoahk.com/archives/4133)
  - [CapsLockX - 像黑客一样操作电脑！ - AutoHotkey Community](https://www.autohotkey.com/boards/viewtopic.php?f=28&t=88593)
- [(10) What are some good career alternatives for a computer programmer with RSI? - Quora](https://www.quora.com/Repetitive-Strain-Injury-RSI/What-are-some-good-career-alternatives-for-a-computer-programmer-with-RSI)
- [simple internationalization function - Scripts and Functions - AutoHotkey Community]( https://www.autohotkey.com/board/topic/50131-simple-internationalization-function/ )

## Footer Catalog - Table of Contents

- [CapsLockX - 💻 Get Hacker's Keyboard. Operate your computer like a **hacker**](#capslockx----get-hackers-keyboard-operate-your-computer-like-a-hacker)
  - [Version Wall - Badge Wall 📛 Badges](#version-wall---badge-wall--badges)
  - [Beginner's Quick Start Tutorial 📖 Tutorial](#beginners-quick-start-tutorial--tutorial)
    - [Simple Introduction Tutorial (Once you read this section, you're considered to have started using CapsLockX)](#simple-introduction-tutorial-once-you-read-this-section-youre-considered-to-have-started-using-capslockx-)
  - [Advanced Reference Manual 🦽 Manual](#advanced-reference-manual--manual)
    - [Installation and Usage 🛠 Installation](#installation-and-usage--installation)
      - [Green Portable Package (Suitable for beginners, stable version) 📦 Packaged Bins](#green-portable-package-suitable-for-beginners-stable-version--packaged-bins)
      - [Command Line Installation (Recommended for advanced users, supports auto-update)🖥️ Install by command](#command-line-installation-recommended-for-advanced-users-supports-auto-update️-install-by-command)
  - [Usage Manual 📖 - Usage Manual](#usage-manual----usage-manual)
    - [Basic Operations](#basic-operations)
    - [Module Descriptions](#module-descriptions)
    - [Nightmares of Multitasking](#nightmares-of-multitasking)
      - [Virtual Desktop Overview: Scenarios Mode, Work Desktop, Entertainment Desktop, Project Categorization...](#virtual-desktop-overview-scenarios-mode-work-desktop-entertainment-desktop-project-categorization)
      - [Improvement of User Experience in Windows Window Switching - Win+tab](#improvement-of-user-experience-in-windows-window-switching---wintab)
      - [TODO-Docs](#todo-docs)
      - [Focus Amount: Active Window, Default Active Window,...](#focus-amount-active-window-default-active-window)
      - [Utilization of Multiple Screens - Multi-screening](#utilization-of-multiple-screens---multi-screening)
      - [Window Arrangement in the 4K Era - Window arrange with 4k screen](#window-arrangement-in-the-4k-era---window-arrange-with-4k-screen)
        - [Window Management in Linux and Mac - Window Manager in Linux and Mac](#window-management-in-linux-and-mac---window-manager-in-linux-and-mac)
        - [Window Management in Android and iOS - Window Management in Android](#window-management-in-android-and-ios---window-management-in-android)
    - [Troubles with Edit Operations](#troubles-with-edit-operations)
      - [Estrangement between Typing Area and Editing Control Area](#estrangement-between-typing-area-and-editing-control-area)
      - [The Concept of Chording](#the-concept-of-chording)
    - [Troubles with Graphic User Interface](#troubles-with-graphic-user-interface)
    - [Human Perception of Speed](#human-perception-of-speed)
    - [Hotkey Flaws of Software](#hotkey-flaws-of-software)
    - [Usability of Portable Keyboards](#usability-of-portable-keyboards)
    - [Help Module](#help-module)
  - [Functions of this module as follows](#functions-of-this-module-as-follows)
    - [Anki Enhancement Module](#anki-enhancement-module)
  - [Common Features/Characteristics](#common-featurescharacteristics)
  - [Explanations](#explanations)
    - [Figma Enhanced](#figma-enhanced)
  - [Common Features/Characteristics](#common-featurescharacteristics-1)
  - [Explanations](#explanations-1)
    - [OneNote 2016 - 2019 Enhancement](#onenote-2016---2019-enhancement)
  - [Common Features Used by XuexingMiao](#common-features-used-by-xuexingmiao)
  - [Key Distribution Design (Under Development)](#key-distribution-design-under-development)
  - [Detailed Key Table / CheatSheet](#detailed-key-table--cheatsheet)
    - [Editing Enhancement Plugin (TG YUIO HJKL) 🌟](#editing-enhancement-plugin-tg-yuio-hjkl--)
    - [Expanded Function Keys for Surface Laptops](#expanded-function-keys-for-surface-laptops)
    - [Media Key Module](#media-key-module)
    - [Mouse Simulation Plugin (WASD QERF)](#mouse-simulation-plugin-wasd-qerf-)
  - [Features](#features)
  - [How to Use as follows](#how-to-use-as-follows)
  - [Operational Details](#operational-details)
    - [JavaScript Calculation (Installation of NodeJS Recommended)](#javascript-calculation-installation-of-nodejs-recommended-)
    - [Window Enhancement Plugin (CLX + 1234567890 ZXCV)](#window-enhancement-plugin-clx--1234567890-zxcv)
  - [Brief Description of the Features](#brief-description-of-the-features)
  - [Effect Pictures](#effect-pictures)
  - [How to Use as follows (Alt+Tab and CapsLockX)](#how-to-use-as-follows-alttab-and-capslockx-)
    - [Quick Input](#quick-input)
    - [Pomodoro Timer](#pomodoro-timer)
    - [Auto Screen Off when Locking Screen](#auto-screen-off-when-locking-screen)
  - [Past and Future 🛰](#past-and-future-)
    - [Creation Background (Autumn 2017) 🍁 Background](#creation-background-autumn-2017--background)
    - [Development Path 🛰️ RoadMap](#development-path-️-roadmap)
    - [Combination Key Meaning Design ⌨ Chore Design](#combination-key-meaning-design--chore-design)
    - [Feature Comparison of CapsLockX and Similar Projects ⚔ Feat Compare Matrix](#feature-comparison-of-capslockx-and-similar-projects--feat-compare-matrix)
      - [CapsLockX Project Urls 🔗 Project Urls](#capslockx-project-urls--project-urls)
      - [Urls of Similar Projects 🔗 Similar Projects](#urls-of-similar-projects--similar-projects)
  - [FAQs Related ❓ Questions](#faqs-related--questions)
    - [Privacy and Security 🔒 Privacy](#privacy-and-security--privacy)
  - [Support ⭐️ Supports](#support-️-supports)
    - [Donation Records (Up to 20210821) 📄 Donate Records](#donation-records-up-to-20210821--donate-records)
    - [Acknowledgements 🙏🏻 Thanks](#acknowledgements--thanks)
    - [Related Topics](#related-topics)
  - [Footer Catalog - Table of Contents](#footer-catalog---table-of-contents)

---

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
