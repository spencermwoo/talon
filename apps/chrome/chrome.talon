app: chrome
-
tag(): browser
tag(): user.tabs

profile switch: user.chrome_mod("shift-m")

tab search: user.chrome_mod("shift-a")

tab search <user.text>$:
    user.chrome_mod("shift-a")
    sleep(200ms)
    insert("{text}")
    key(down)

mic off: 
    speech.disable()
    user.microphone_select(1)

key(ctrl-shift-h): 
    speech.enable()
    user.microphone_select(2)

key(ctrl-shift-k): 
    speech.disable()
    user.microphone_select(1)

key(ctrl-shift-l): mimic("dictation mode")

key(ctrl-shift-j): mimic("command mode")

key(ctrl-shift-o): user.silence()

key(ctrl-shift-i): user.microphone_select(4)

key(f1): sound.set_microphone("None")
key(f2): sound.set_microphone("System Default")

key(f20):
    user.hud_add_log('event', 'command mode')
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")

key(f21):
    user.hud_add_log('event', 'dictation mode')
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")

key(f22):
    user.hud_add_log('event', 'sleep all')
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
