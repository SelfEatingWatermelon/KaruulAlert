local addonInfo, private = ...

if (Inspect.System.Language() == "French") then
	private.kAlertTexts = {
		["addonName"] = "Système d'Alerte de Karuul",
		["msgNewBuff"] = "Nouvelle augmentation découverte: %s",
		["msgNewAbility"] = "Nouvelle compétence découverte",
		["msgActiveSetUnchanged"] = "Les ensembles du rôle sont automatiquement actifs. Entrez /kalert set=%d pour activer l'ensemble d'alertes précédant manuellement.",
		["titleLayout"] = "Modifier disposition",
		["btSave"] = "Sauvegarder",
		["btCancel"] = "Annuler",
		["btDone"] = "Effectué",
		["btEdit"] = "Editer",
		["btDelete"] = "Supprimer",
		["btExport"] = "Exporter",
		["btImport"] = "Importer",
		["miFile"] = "Fichier",
		["btExportAlert"] = "Exporter une Alerte",
		["btImportAlert"] = "Importer une Alerte",
		["btExportSet"] = "Exporter un Ensemble",
		["btImportSet"] = "Importer un Ensemble",
		["miShare"] = "Partager",
		["miMoveToSet"] = "Changer d'Ensemble...",
		["miCopyToSet"] = "Copier vers l'Ensemble...",
		["btShareAlert"] = "Partager une Alerte...",
		["btShareSet"] = "Partager un Ensemble",
		["btShare"] = "Partager",
		["btGeneralConfiguration"] = "Configuration",
		["miHelp"] = "Aide",
		["miAbout"] = "A Propos",
		["miContents"] = "Contenu",
		["ebAlertName"] = "Nom",
		["buff"] = "Augmentation",
		["ability"] = "Compétence",
		["resource"] = "Ressource",
		["casting"] = "Chargement",
		["tbAlertToggleActive"] = "Actif",
		["tbAlertToggleMissing"] = "Manquant",
		["tbAlertToggleReady"] = "Prêt",
		["tbAlertToggleCooldown"] = "Recharg.",
		["tbAlertToggleAbove"] = "Supérieur à",
		["tbAlertToggleBelow"] = "Inférieur à",
		["tbAlertToggleRange"] = "Gamme",
		["ckTimerTimer"] = "Compteur",
		["ckTimerWarning"] = "Avertir",
		["ebTimerLength"] = "Durée",
		["ebSize"] = "Taille",
		["tbInsideInside"] = "Intérieur",
		["tbInsideOutside"] = "Extérieur",
		["tbLocationCenter"] = "Centré",
		["tbLocationTop"] = "Haut",
		["tbLocationBottom"] = "Bas",
		["tbLocationLeft"] = "Gauche",
		["tbLocationRight"] = "Droite",
		["lblResourceTypes"] = "Ressources",
		["ebValue"] = "Valeur",
		["ebStacks"] = "Cumul",
		["ckSelfCast"] = "Mes sorts uniquement",
		["ckInterruptible"] = "Seulement interruptible",
		["ckDisableAlert"] = "Alerte Désactivée",
		["ebScreenLayer"] = "Icone",
		["ebInEffect"] = "Effet intérieur",
		["ebOutEffect"] = "Effet extérieur",
		["ebWarningEffect"] = "Avertissant",
		["ebActiveEffect"] = "Effet actif",
		["ckUseDefaultImage"] = "Utiliser l'image par défaut",
		["ebCustomImage"] = "Personnalisé",
		["ebImageScale"] = "Echelle",
		["ebImageX"] = "X",
		["ebImageY"] = "Y",
		["ebText"] = "Texte",
		["ebOpacity"] = "Opacité",
		["lblColor"] = "Couleur",
		["ebRed"] = "R",
		["ebGreen"] = "V",
		["ebBlue"] = "B",
		["ebTextFont"] = "Police",
		["ckCombatOnly"] = "Seulement en combat",
		["statLoaded"] = "Chargé",
		["statAlertNameMissing"] = "Echec de l'ajout d'Alerte - Aucun Nom d'Alerte",
		["statItemNotFound"] = "Echer de l'ajout d'Alerte - Objet non trouvé",
		["statAlertAdded"] = "Alerte Ajoutée",
		["statAlertUpdated"] = "Alerte Modifiée",
		["statAlertAlreadyExists"] = "Une alerte porte déjà ce nom",
		["statAlertInvalid"] = "L'alerte est invalide",
		["btClear"] = "Nettoyer",
		["btEditLayout"] = "Déplacer",
		["btClose"] = "Fermer",
		["btApply"] = "Appliquer",		
		["ckScanBuffs"] = "Activer le scanner",
		["ckLivingOnly"] = "Seulement Actif",
		["ckFriend"] = "Ami",
		["ckFoe"] = "Ennemi",
		["ckNeutral"] = "Neutre",
		["unitPlayer"] = "Joueur",
		["unitTarget"] = "Cible",
		["unitFocus"] = "Privilégié",
		["unitPet"] = "Compagnon",
		["unitParty"] = "Groupe",
		["unitOther"] = "Autre",
		["resHealth"] = "Santé",
		["resMana"] = "Mana",
		["resEnergy"] = "Energie",
		["resPower"] = "Puissance",
		["resCharge"] = "Charge",
		["resComboPoints"] = "Points de Combo",
		["resPlanar"] = "Charges Planaires",
		["abtTitle"] = "Système d'Alerte de Karuul\nPar: Karuul, Thorarin",
		["lbVersion"] = "Version:",
		["abtInfo"] = "Remerciements particuliers:\nEquipe de WoW Power Auras - Cet addon n'aurait jamais existé sans leur formidable travail. Ainsi que pour l'autorisation d'utilisation de leurs images.\n\nCéres guilde BloodLust Brisesol - Pour l'apport de la traduction française et son aide générale anisi que ses suggestion au court de ce projet.\n\nValixx - Pour l'apport de la traduction allemande.\n\nZveryga, guilde Grey Guard - pour la traduction russe.\n\nNaifu, Créateur de nkRogue - Qui m'a donné un aperçu des possibilités et m'a inspiré lors du développement de cet addon.\n\nSafe - Pour la création de Safe's Raid Manager et du merveilleux King Boss Mods.\n\nImhothar - pour la création de LibString.\n\nZorbaTHut - D'être toujours là pour répondre aux question, même les week-end.",
		["lbAlertTextEffects"] = "Effets des textes d'alerte:",
		["lbAlertCounterEffects"] = "Effets des compteurs d'alerte:",
		["tbTextEffects"] = { "Aucun", "Ombre", "Bordure", "Ombre et bordure" },
		["lbPerformance"] = "Options de performances:",
		["tbPerformance"] = { "Plus rapide", "Moyen", "Plus sûr" },
		["txtPerformance"] = "Si vous recevez des avertissements de problèmes de performance, veuillez activer \"Moyen\" ou \"Plus sûr\"",
		["lbScanner"] = "Scanner de compétences:",
		["btScannerStart"] = "Arrêter le scan",
		["btScannerStop"] = "Activer le scan",
		["txtScanner"] = "Veuillez consulter la section d'aide \"Pour commencer\" pour plus d'informations.",
		["btResetGlobals"] = "Réinit. options",
		["txtResetGlobals"] = "A utiliser avec précaution. Il est recommendé d'effectuer à nouveau un scan suite à cette opération.",
		["msgSharingSuccess"] = "Partage de l'alerte avec %s réussi",
		["msgSharingFailure"] = "Erreur lors du partage de l'alerte avec %s",
		["titleShareAlert"] = "Partager l'alerte",
		["lbSharingSelectPlayer"] = "Choisissez le joueur concerné par le partage:",
		["lbSet"] = "Ensemble:",
		["lbSubSet"] = "Sous-Ensemble:",
		["titleMoveAlert"] = "Déplacer l'Alerte",
		["lbMoveAlert"] = "Veuillez sélectionner l'ensemble ou le sous-ensemble dans lequel vous souhaitez déplacer l'alerte.",
		["btMove"] = "Déplacer",
		["titleCopyAlert"] = "Copier l'Alerte",
		["lbCopyAlert"] = "Veuillez sélectionner l'ensemble ou le sous-ensemble dans lequel vous souhaitez copier l'alerte.",
		["btCopy"] = "Copier",
		["titleSharedAlert"] = "Alerte partagée",
		["lbSharedAlert"] = "%s a partagé une alerte avec vous. Souhaitez-vous ajouter cette alerte ?",
		["btAdd"] = "Ajouter",
		["miGeneralConfiguration"] = "Configuration générale...",
		["msgNewVersion"] = "Une version plus récente de KaruulAlert a été trouvée: v%s. Merci de faire la mise à jour !",
		["msgTaskRecurringError"] = "Erreur récurrente détectée. Le rechargement de l'interface utilisateur (/reloadui) peut résoudre le problème.",
		["msgTutorialStep01"] = "Vous semblez utiliser KaruulAlert pour la première fois.\rSouhaitez-vous obtenir de l'aide pour la configuration initiale?",
		["msgTutorialStep02"] = "Avant de configurer des alertes, KaruulAlert a besoin d'apprendre les compétences de votre personnage.\rVeuillez trouver un endroit sur et passer par tous vos rôles.",
		["msgTutorialStep03Retry"] = "Vous n'avez pas changé de rôle permettant à KaruulAlert de tout connaitre de votre personnage.\rRéessayer ?",
		["msgTutorialStep03"] = "KaruulAlert apprend les différentes compétences quand vous jouez.\rLorsque le scanner est activé, il ne va pas seulement les apprendre plus vite, \r il va aussi vous avertir lorsqu'il en trouve de nouvelles.\rEssayez maintenant; sélectionnez d'autres joueurs qui ont des compétences intéressantes.",
		["msgTutorialStep04"] = "Vous etes maintenant prets pour configurer des alertes.\rSouhaitez-vous ouvrir la fenêtre de configuration maintenant ?",
		["msgTutorialStep05"] = "Pour ouvrir la fenêtre de configuration, entrez la commande /kalert commande.\rPour plus de détails sur une commande précise, entrez /kalert help.",
		["msgTutorialStep06"] = "Les Alertes sont organisées en ensembles.\r Vous pouvez configurer autant d'ensembles que vous avez de rôles, ainsi que 10 sous-ensembles supplémentaires.\r Seul un ensemble et un sous-ensemble peuvent être actifs simultanément.",
		["msgTutorialStep07"] = "Ceci conclut le tutoriel de KaruulAlert.\rVeuillez consulter l'aide en ligne pour plus d'informations sur la configuration des différents types d'alertes.\rSouhaitez vous ouvrir l'aide en ligne maintenant ?",
		["btYes"] = "Oui",
		["btNo"] = "Non",
		["btOK"] = "OK",
		["btContinue"] = "Continuer",
		["btTryAgain"] = "Réessayer",
		["lbAlertData"] = "Données de l'Alerte : ",
		["msgImportCorrupt"] = "Les données semblent être incomplètes ou corrompues. Vérifiez que vous ayez copié tout le texte et sans aucun ajout.",
		["txtImportAlert"] = "Collez le texte (Ctrl+V ou Maj+Ins) créé par la fonction d'export d'alerte dans le champ ci-dessous. Si vous la copiez depuis un forum, veuillez vérifier qu'il s'agit uniquement des données de l'alerte.",
		["txtImportSet"] = "Collez le texte (Ctrl+V ou Maj+Ins) créé par la fonction d'export d'ensemble dans le champ ci-dessous. Si vous le copiez depuis un forum, veuillez vérifier qu'il s'agit uniquement des données de l'ensemble.",
		["txtExportAlert"] = "Copiez le texte ci-dessous (Ctrl+C) et copiez le n'importe ou pour partager ou stocker cette alerte. Elle peut être importée quand vous le souhaitez via la fonction d'import d'alerte.",
		["txtExportSet"] = "Copiez le texte ci-dessous (Ctrl+C) et copiez le n'importe ou pour partager ou stocker cet ensemble d'alertes. Il peut être importé quand vous le souhaitez via la fonction d'import d'ensemble.",
		["msgExportCorrupt"] = "An unexpected error occurred while exporting the alert. The data appears to be incomplete or corrupt",
		["msgSharedAlertCorrupt"] = "%s tried to share an alert with you, but it appears to be corrupt. Ignoring this alert.",
		["msgInvalidAlertDeleted"] = "Invalid alert found: %s. It has been deleted in order to prevent unexpected errors."
	}
	
end