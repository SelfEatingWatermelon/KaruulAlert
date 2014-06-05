local addonInfo, private = ...

if ( Inspect.System.Language() == "German" ) then
 
	private.kAlertTexts = {
		["addonName"] = "Karuul's Warnung's System",
		["msgNewBuff"] = "Neuer Buff gefunden: %s",
		["msgNewAbility"] = "Neue F\195\164higkeit gefunden",
		["msgActiveSetUnchanged"] = "Automatic role based sets active. Use /kalert set=%d to manually activate the last edited set.", -- TODO: translate
		["titleLayout"] = "Layout \195\164ndern",
		["btSave"] = "Speichern",
		["btCancel"] = "Abbrechen",
		["btDone"] = "done",
		["btEdit"] = "\195\137ndern",
		["btDelete"] = "L\195\182schen",
		["btExport"] = "exportieren",
		["btImport"] = "importieren",
		["miFile"] = "File",
		["btExportAlert"] = "Warnung exportieren",
		["btImportAlert"] = "Warnung importieren",
		["btExportSet"] = "Set exportieren",
		["btImportSet"] = "Set importieren",
		["miShare"] = "Share",
		["miMoveToSet"] = "Move to Set...",
		["miCopyToSet"] = "Copy to Set...",
		["btShareAlert"] = "Share Alert...",
		["btShareSet"] = "Share Set",
		["btShare"] = "Share",
		["btGeneralConfiguration"] = "Config",
		["miHelp"] = "Help",
		["miAbout"] = "About",
		["miContents"] = "Contents",
		["ebAlertName"] = "Name",
		["buff"] = "Buff",
		["ability"] = "F\195\164higkeit",
		["resource"] = "Ressource",
		["casting"] = "Zaubern",
		["tbAlertToggleActive"] = "Aktiv",
		["tbAlertToggleMissing"] = "Fehlt",
		["tbAlertToggleReady"] = "Fertig",
		["tbAlertToggleCooldown"] = "Abklingzeit",
		["tbAlertToggleAbove"] = "Oben",
		["tbAlertToggleBelow"] = "Unten",
		["tbAlertToggleRange"] = "Reichweite",
		["ckTimerTimer"] = "Timer",
		["ckTimerWarning"] = "Warnung",
		["ebTimerLength"] = "L\195\164nge",
		["ebSize"] = "Gr\195\182\195\159e",
		["tbInsideInside"] = "Innen",
		["tbInsideOutside"] = "Au\195\159en",
		["tbLocationCenter"] = "Mitte",
		["tbLocationTop"] = "Oben",
		["tbLocationBottom"] = "Unten",
		["tbLocationLeft"] = "Links",
		["tbLocationRight"] = "Rechts",
		["lblResourceTypes"] = "Ressourcen",
		["ebValue"] = "Wert",
		["ebStacks"] = "Stacks",
		["ckSelfCast"] = "Selbst Cast Nur",
		["ckInterruptible"] = "Nur unterbrechbar",
		["ckDisableAlert"] = "Warnung ausschalten",
		["ebScreenLayer"] = "Layer",
		["ebInEffect"] = "Warnung anzeigen",
		["ebOutEffect"] = "Warnung verstecken",
		["ebWarningEffect"] = "Warnwirkung",
		["ebActiveEffect"] = "Aktiver Effekt",
		["ckUseDefaultImage"] = "Use Default Image",
		["ebCustomImage"] = "Benutzerdefiniert",
		["ebImageScale"] = "Gr\195\182\195\159e",
		["ebImageX"] = "X",
		["ebImageY"] = "Y",
		["ebText"] = "Text",
		["ebOpacity"] = "Opazit\195\164t",
		["lblColor"] = "Farbe",
		["ebRed"] = "R",
		["ebGreen"] = "G",
		["ebBlue"] = "B",
		["ebTextFont"] = "Schriftart",
		["ckCombatOnly"] = "Nur im Kampf",
		["statLoaded"] = "Geladen",
		["statAlertNameMissing"] = "Alert konnte nichts hinzuf\195\188gen - Kein Name eingegeben",
		["statItemNotFound"] = "Alert konnte nichts hinzuf\195\188gen - Item nicht gefunden",
		["statAlertAdded"] = "Alert hinzugef\195\188gt",
		["statAlertUpdated"] = "Alert aktualisiert",
		["statAlertAlreadyExists"] = "An alert with this name already exists",
		["statAlertInvalid"] = "Alert is invalid",
		["btClear"] = "Zur\195\188cksetzen",
		["btEditLayout"] = "Layout \195\164ndern",
		["btClose"] = "Schlie\195\159en",
		["btApply"] = "Apply",		
		["ckScanBuffs"] = "F\195\164higkeiten Scanner einschalten",
		["ckLivingOnly"] = "Ziel lebend",
		["ckFriend"] = "Freund",
		["ckFoe"] = "Feind",
		["ckNeutral"] = "Neutral",
		["unitPlayer"] = "Spieler",
		["unitTarget"] = "Ziel",
		["unitFocus"] = "Fokus",
		["unitPet"] = "Begleiter",
		["unitParty"] = "Gruppe",
		["unitOther"] = "Andere",
		["resHealth"] = "Leben",
		["resMana"] = "Mana",
		["resEnergy"] = "Energie",
		["resPower"] = "Power",
		["resCharge"] = "Ladung",
		["resComboPoints"] = "Combo Punkte",
		["resPlanar"] = "Planar Charges",
		["abtTitle"] = "Karuul's Alerting System\nBy: Karuul, Thorarin",
		["lbVersion"] = "Version:",
		["abtInfo"] = "Special Thanks:\nWoW Power Auras crew - Without their amazing addon this would not even have been a thought. Also for allowing use of their sample images.\n\nC\195\169res guilde BloodLust Brisesol - For providing the French translations for the addon and general help and suggestions along the way.\n\nValixx - For providing the German translations.\n\nZveryga, Grey Guard guild - for Russian translation.\n\nNaifu, creator of nkRogue - Who gave me a glimpse of what was possible and inspired me to dive into addon development.\n\nSafe - For creating Safe's Raid Manager as well as the wonderful King Boss Mods.\n\nImhothar - For creating LibString.\n\nZorbaTHut - For being around to answer questions even over the weekends.",
		["lbAlertTextEffects"] = "Alert text effects:",
		["lbAlertCounterEffects"] = "Alert counter effects:",
		["tbTextEffects"] = { "None", "Shadow", "Outline", "Shadow and outline" },
		["lbPerformance"] = "Performance settings:",
		["tbPerformance"] = { "Fastest", "Safer", "Safest" },
		["txtPerformance"] = "If you are receiving performance warnings, please select Safer or Safest",
		["lbScanner"] = "Ability scanner:",
		["btScannerStart"] = "Start Scanning",
		["btScannerStop"] = "Stop Scanning",
		["txtScanner"] = "Please read the help \"Getting started\" section for more information.",
		["btResetGlobals"] = "Reset Globals",
		["txtResetGlobals"] = "Use with caution. Recommended to rescan afterwards.",
		["msgSharingSuccess"] = "Successfully shared alert with %s",
		["msgSharingFailure"] = "Failed to share alert with %s",
		["titleShareAlert"] = "Share Alert",
		["lbSharingSelectPlayer"] = "Select a player to share with:",
		["lbSet"] = "Set:",
		["lbSubSet"] = "Sub Set:",
		["titleMoveAlert"] = "Move Alert",
		["lbMoveAlert"] = "Please select the sub or sub set you wish to move this alert to.",
		["btMove"] = "Move",
		["titleCopyAlert"] = "Copy Alert",
		["lbCopyAlert"] = "Please select the sub or sub set you wish to copy this alert to.",
		["btCopy"] = "Copy",
		["titleSharedAlert"] = "Shared Alert",
		["lbSharedAlert"] = "%s has shared an alert with you. Do you wish to add this alert?",
		["btAdd"] = "Add",
		["miGeneralConfiguration"] = "General Configuration...",
		["msgNewVersion"] = "Eine neuere KaruulAlert Version wurde gefunden: v%s. Bitte updaten Sie!",
		["msgTaskRecurringError"] = "Wiederkehrende Fehler erkannt. Neuladen des UI (/reloadui) darf das Problem beheben.",
		["msgTutorialStep01"] = "You appear to be running KaruulAlert for the first time.\rWould you like some help with the initial setup?",
		["msgTutorialStep02"] = "Before you can set up alerts, KaruulAlert needs to learn about your character's abilities.\rPlease find a safe place and switch to every role you have.",
		["msgTutorialStep03Retry"] = "You have not switched roles to allow KaruulAlert to learn all about your character.\rTry again?",
		["msgTutorialStep03"] = "KaruulAlert learns about different buffs as you play.\rWith the ability scanner enabled, it will not only learn faster,\rit will also notify you when it finds a new buff.\rTry it now; select some other players that have interesting buffs.",
		["msgTutorialStep04"] = "You are now ready to set up some alerts.\rWould you like to open the configuration dialog now?",
		["msgTutorialStep05"] = "To open up the configuration dialog, type in the /kalert command.\rFor more explanation about a specific subject, type /kalert help.",
		["msgTutorialStep06"] = "Alerts are organized into sets.\rYou can set up one set for each role you play, plus up to 10 sub sets.\rOnly one set and one sub set can be active at the same time.",
		["msgTutorialStep07"] = "This concludes the tutorial for KaruulAlert.\rPlease read the online help for information on setting up different alert types\rWould you like to open the online help now?",
		["btYes"] = "Ja",
		["btNo"] = "Nein",
		["btOK"] = "OK",
		["btContinue"] = "Weiter",
		["btTryAgain"] = "Nochmals",
		["lbAlertData"] = "Alert data:",
		["msgImportCorrupt"] = "Data appears to be incomplete or corrupt. Check if you have copied the complete text and didn't include any extra characters.",
		["txtImportAlert"] = "Paste the text (Ctrl+V or Shift+Ins) as created by the Export Alert function in the text field below. If you are copying from a forum, please make sure to only paste the actual alert data.",
		["txtImportSet"] = "Paste the text (Ctrl+V or Shift+Ins) as created by the Export Set function in the text field below. If you are copying from a forum, please make sure to only paste the actual set data.",
		["txtExportAlert"] = "Copy the text below (Ctrl+C) and paste anywhere to share or store this alert. It can be imported anytime with the Import Alert function.",
		["txtExportSet"] = "Copy the text below (Ctrl+C) and paste anywhere to share or store this alert set. It can be imported anytime with the Import Set function.",
		["msgExportCorrupt"] = "An unexpected error occurred while exporting the alert. The data appears to be incomplete or corrupt",
		["msgSharedAlertCorrupt"] = "%s tried to share an alert with you, but it appears to be corrupt. Ignoring this alert.",
		["msgInvalidAlertDeleted"] = "Invalid alert found: %s. It has been deleted in order to prevent unexpected errors."
	}
	
end 