# dotfiles

My dotfiles

**✨ Now with i3-like keyboard shortcuts for KDE Plasma ✨**


## Table of Contents

- [KDE](#kde-hotkeys)
- [npm](#npm)
- [nvim](#nvim)
- [taskwarrior](#taskwarrior)
- [tmux](#tmux)
- [vscode](#vscode)
- [zsh](#zsh)


## KDE Hotkeys

To use these, in KDE, navigate to **System Settings** -> **Shortcuts** -> **Import Scheme**. Import `kde/kwin.kksrc` file into **Kwin**.

<table>

<tr>
<td>Center focused window</td>
<td><kbd>Alt</kbd> + <kbd>c</kbd></td>
</tr>

<tr>
<td>Resize focused window</td>
<td><kbd>Alt</kbd> + <kbd>r</kbd></td>
</tr>

<tr>
<td>Move focused window</td>
<td><kbd>Alt</kbd> + <kbd>m</kbd></td>
</tr>

<tr>
<td>Close focused window</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>q</kbq></td>
</tr>

<tr>
<td>Toggle focused window fullscreen</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>Space</kbq></td>
</tr>

<tr>
<td>Quick tile focused window to the top</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>k</kbq></td>
</tr>

<tr>
<td>Quick tile focused window to the right</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>l</kbq></td>
</tr>

<tr>
<td>Quick tile focused window to the bottom</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>j</kbq></td>
</tr>

<tr>
<td>Quick tile focused window to the left</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>h</kbq></td>
</tr>

<tr>
<td>Desktop 1</td>
<td><kbd>Alt</kbd> + <kbd>1</kbd></td>
</tr>

<tr>
<td>Desktop 2</td>
<td><kbd>Alt</kbd> + <kbd>2</kbd></td>
</tr>

<tr>
<td>Desktop 3</td>
<td><kbd>Alt</kbd> + <kbd>3</kbd></td>
</tr>

<tr>
<td>Desktop 4</td>
<td><kbd>Alt</kbd> + <kbd>4</kbd></td>
</tr>

<tr>
<td> Move focused window to Desktop 1</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>1</kbd></td>
</tr>

<tr>
<td>Move focused window to Desktop 2</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>2</kbd></td>
</tr>

<tr>
<td>Move focused window to Desktop 3</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>3</kbd></td>
</tr>

<tr>
<td>Move focused window to Desktop 4</td>
<td><kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>4</kbd></td>
</tr>

</table>

## npm

* Sets cache directory to XDG_CACHE_HOME

## nvim 

* Custom binding are documented in `nvim/keybinds.vim`. 

* [vim-plug](https://github.com/vim-plug/vim-plug) is required to manage plugins


## taskwarrior

* Sets data location to `~/.local/share/task`

## tmux

* [tpm](https://github.com/tmux-plugins/tpm) is required to manage plugins

* TODO: Document keybinds. For now, see `tmux/tmux.conf`

## vscode

* Includes vim bindings + easymotion

## zsh

* [zplug](https://github.com/zplug/zplug) is required to manage plugins
