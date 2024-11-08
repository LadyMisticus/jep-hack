; Text in this area uses translations from Minamitoku.
; https://www.youtube.com/watch?v=Pe1vsKRl7_M&ab_channel=Minamitoku

	object_const_def
	const QUIET_CAVE_BUG_CATCHER

QuietCave_MapScripts:
	def_scene_scripts

	def_callbacks

QuietCaveSign1:
	jumptext QuietCaveSign2Text ; swapped because im lazy and misplaced the signs

QuietCaveSign1Text:
	text "SILENT HILLS"
	line "This way!"
	done

QuietCaveSign2:
	jumptext QuietCaveSign1Text

QuietCaveSign2Text:
	text "OLD CITY"
	line "This way!"
	done

QuietCaveBoy1:
	jumptextfaceplayer QuietCaveBoy1Text

QuietCaveBoy1Text:
	text "The wild #MON"
	line "are weak, so my"
	cont "friends come"
	cont "here to train!"
	
	para "Test your strength"
	line "against them!"
	done

TrainerBugCatcherSioned:
	trainer BUG_CATCHER, SIONED, EVENT_BEAT_BUG_CATCHER_SIONED, BugCatcherSionedSeenText, BugCatcherSionedBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherSionedAfterText
	waitbutton
	closetext
	end

; Minamitoku didn't translate the text outside of the spotted text, so we'll stick with this.
BugCatcherSionedSeenText:
	text "I know more"
	line "about bug type"
	cont "#MON than"
	cont "anyone else!"
	done

BugCatcherSionedBeatenText:
	text "Not bad!"
	done

BugCatcherSionedAfterText:
	text "Foreigners often"
	line "say this place"
	cont "feels familiar."
	
	para "What's so special"
	line "about this place,"
	cont "anyhow?"
	done

; Reusing previously unused Beauty here.
TrainerBeautyJulie:
	trainer BEAUTY, JULIE, EVENT_BEAT_BEAUTY_JULIE, BeautyJulieSeenText, BeautyJulieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyJulieAfterText
	waitbutton
	closetext
	end

; Minamitoku didn't translate the text outside of the spotted text here too.
BeautyJulieSeenText:
	text "Nice weather..."
	line "How are you?"
	done

BeautyJulieBeatenText:
	text "PERSIAN! No!"
	done

BeautyJulieAfterText:
	text "Huh? This is a"
	line "cave?"
	
	para "I see..."
	done

; Reusing previously unused Firebreather here.
; He's also the most funny.
TrainerFirebreatherDick:
	trainer FIREBREATHER, DICK, EVENT_BEAT_FIREBREATHER_DICK, FirebreatherDickSeenText, FirebreatherDickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherDickAfterText
	waitbutton
	closetext
	end

; Minamitoku didn't translate the text outside of the spotted text here too.
FirebreatherDickSeenText:
	text "I'm practicing"
	line "FLAMETHROWER!"
	done

FirebreatherDickBeatenText:
	text "Fwoosh!"
	done

FirebreatherDickAfterText:
	text "It's nice to"
	line "light up the"
	cont "cave, but..."
	
	para "It's a little"
	line "dangerous, isn't"
	cont "it?"
	done

TrainerBugCatcherElwyn:
	trainer BUG_CATCHER, ELWYN, EVENT_BEAT_BUG_CATCHER_ELWYN, BugCatcherElwynSeenText, BugCatcherElwynBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherElwynAfterText
	waitbutton
	closetext
	end

; Minamitoku didn't translate the text outside of the spotted text here too.
BugCatcherElwynSeenText:
	text "Hey! Hey! Watch!"
	
	para "This is definitely"
	line "a new #MON!"
	done

BugCatcherElwynBeatenText:
	text "Huh?!"
	done

; Definitely creative liberties here - if a translation is brought in, it'll definitely be replaced. Very funny for now.
BugCatcherElwynAfterText:
	text "This LEDIAN is"
	line "so weak!"
	
	para "I guess new"
	line "doesn't mean"
	cont "strong..."
	done

TrainerSchoolboyPero:
	trainer SCHOOLBOY, PERO, EVENT_BEAT_SCHOOLBOY_PERO, SchoolboyPeroSeenText, SchoolboyPeroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyPeroAfterText
	waitbutton
	closetext
	end

; Minamitoku didn't translate the text outside of the spotted text here too.
SchoolboyPeroSeenText:
	text "I've studied a"
	line "lot, so I have"
	cont "to be stronger"
	cont "than you!"
	done

SchoolboyPeroBeatenText:
	text "How?!"
	done

; Definitely creative liberties here - if a translation is brought in, it'll definitely be replaced. Very funny for now.
SchoolboyPeroAfterText:
	text "Huh? How did"
	line "I get DISTURBAN?"
	
	para "I tricked my"
	line "SHELLDER into"
	cont "evolving!"
	
	para "It's easy! Just"
	line "a SLOWPOKETAIL!"
	done

QuietCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 47, 30, ROUTE_49, 1
	warp_event 47, 31, ROUTE_49, 2
	warp_event  7,  1, ROUTE_49_2, 1
	warp_event  7,  1, ROUTE_49_2, 2

	def_coord_events

	def_bg_events
	bg_event 47, 28, BGEVENT_READ, Route49Sign1
	bg_event  9,  2, BGEVENT_READ, Route49Sign2

	def_object_events
	object_event 41, 28, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, QuietCaveBoy1, -1
	object_event 41, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherSioned, -1
	object_event 29, 26, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyJulie, -1
	object_event 28,  6, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherDick, -1
	object_event  9, 25, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherElwyn, -1
	object_event  9,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 6, TrainerSchoolboyPero, -1
