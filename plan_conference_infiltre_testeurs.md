# Plan structuré — conférence

## Titre validé

**Un développeur infiltré chez les testeurs : Comment faire échouer le BDD, l'ATDD & le TDD surtout à l'ère du Spec Driven Development**

---

## Intention générale

Cette conférence adopte un **ton volontairement satirique** : on se place dans la peau d’une équipe qui veut faire échouer un projet logiciel tout en prétendant suivre des pratiques modernes, sérieuses et reconnues.

Le but n’est pas de ridiculiser BDD, ATDD, TDD, DDD ou le Spec Driven Development.
Le but est de montrer que :

- les pratiques échouent rarement à cause de leur principe ;
- elles échouent surtout à cause des **confusions**, des **caricatures**, des **raccourcis**, de la **disparition du métier**, et de la **suppression du design** ;
- à l’ère de l’IA, ces erreurs donnent souvent un **faux sentiment d’efficacité au début**, avant de produire de la dette, de l’instabilité et de l’échec à l’échelle.

La révélation finale doit être claire :

> plus les artefacts sont précis, cohérents, discutés et structurés, plus les humains **et** l’IA peuvent travailler efficacement et durablement.

---

## Ligne rouge de toute la conférence

Pour faire échouer une équipe, il faut avant tout **mettre la zizanie dans les mots**.

Les grandes confusions à exploiter sont :

- confondre **vibe coding** et **Spec Driven Development** ;
- confondre **requirement** et **specification** ;
- confondre **BDD** et **Gherkin** ;
- confondre **BDD** et **test automatisé** ;
- confondre **ATDD** et simple exécution de tests ;
- confondre **TDD** et simple “test first” ;
- faire croire que **l’IA remplace le design**.

---

## Ordre narratif retenu

Tu m’as laissé choisir l’ordre le plus pertinent. Je propose celui-ci :

1. **Présenter le cadre et le ton**.
2. **Faire croire que vibe coding = SDD**, pour accrocher immédiatement avec le sujet IA.
3. **Revenir sur requirement vs specification**, pour poser la racine du problème.
4. **Montrer comment le BDD est caricaturé**, puis ce qu’il est réellement.
5. **Saboter Discovery**, puis **saboter Formulation**.
6. **Introduire un bloc dédié au design**, volontairement oublié par les équipes.
7. **Séparer clairement DDD stratégique, DDD tactique et MDD**.
8. **Revenir à l’ATDD**, à la planification et à l’automation.
9. **Faire un passage plus précis sur le TDD**.
10. **Recomposer le cycle complet du Spec Driven Development**.
11. **Conclure sur la vraie leçon**.

Pourquoi cet ordre ?
Parce qu’il commence par la confusion la plus contemporaine — **le faux SDD piloté au prompt** — puis montre progressivement tout ce qu’il faut remettre dans la boucle pour que cela tienne réellement.

---

## Exemple fil rouge retenu

### Proposition principale

**Ajouter un article au panier**.

### Pourquoi c’est un bon choix

- compréhensible par tout le monde ;
- immédiatement visuel ;
- assez simple pour démarrer ;
- assez riche pour introduire :
  - règles métier,
  - cas limites,
  - stock,
  - quantités,
  - promotions,
  - utilisateur connecté ou non,
  - panier existant ou non,
  - qualité de l’expérience utilisateur,
  - contraintes non fonctionnelles.

### Ce que ce fil rouge permettra de montrer

- un **mauvais requirement** ;
- une **bonne specification** ;
- un **mauvais Example Mapping** ;
- un **bon Example Mapping** ;
- un **mauvais Gherkin** ;
- une formulation plus riche avec **Rule / Example / tags** ;
- un oubli du design ;
- une modélisation simple du domaine ;
- des tests d’acceptation ;
- un découpage TDD sur une petite règle métier.

> On pourra le remplacer plus tard si on trouve un cas encore plus parlant, mais il est déjà très solide.

---

# Déroulé structuré par partie

## Partie 0 — Cover

### Objectif
Poser immédiatement le ton, le sujet et la promesse.

### Contenu
- Titre de la conférence.
- Nom, rôle, contexte.
- Sous-titre possible :
  - **Conférence satirique sur les meilleures façons de saboter un projet tout en prétendant appliquer les bonnes pratiques**.

---

## Partie 1 — Présentation de l’intervenant

### Objectif
Établir la crédibilité avant d’entrer dans la satire.

### Éléments à intégrer
- 20 ans de développement logiciel.
- Ancien chercheur.
- Travail dans une grande banque.
- Animation d’une communauté d’environ **1300 développeurs**.
- Plus de **200 feature teams**.
- Environ **5000 personnes** concernées.
- Conclusion narrative :
  - **on doit mener ce paquebot au succès**.

### Rôle dans l’histoire
Montrer que la conférence parle d’un terrain réel, complexe, industriel.

---

## Partie 2 — Disclaimers

### Objectif
Désamorcer les malentendus et installer le second degré.

### Contenu
- Les propos n’engagent que moi.
- Ils ne représentent pas mon entreprise.
- Toute la conférence est au second degré.
- Le troisième degré est également bienvenu.
- Si vous vous sentez concerné, vous n’êtes pas seul.
- D’autres disclaimers pourront être ajoutés selon le ton final.

---

## Partie 3 — Le jeu : faire échouer une équipe exemplaire

### Objectif
Lancer l’expérience de pensée.

### Idée
On suit une équipe qui prétend appliquer les meilleures pratiques du moment, à la fois dans le software craft et dans l’usage de l’IA.

### Message
Le but n’est pas de la faire réussir.
Le but est de la faire échouer.

### Angle
On ne va pas casser le projet frontalement.
On va **pourrir la démarche de l’intérieur**.

---

## Partie 4 — Premier sabotage : faire croire que le vibe coding, c’est du Spec Driven Development

### Objectif
Commencer par la confusion la plus actuelle.

### Message principal
**Prompt flou + IA + absence de contrôle != Spec Driven Development**.

### Angle satirique
Pour saboter un projet moderne :

- on donne une intention vague ;
- on la baptise “specification” ;
- on laisse l’IA produire ;
- on renonce à relire sérieusement ;
- on célèbre la vitesse ;
- on reporte les vrais problèmes à plus tard.

### Ce qu’il faut montrer
- pourquoi cela peut sembler marcher sur un petit périmètre ;
- pourquoi cela se dégrade sur un système réel ;
- pourquoi cela donne une illusion de maîtrise ;
- pourquoi ce n’est pas du SDD, mais plutôt du **vibe coding**.

### Message de fond
Le SDD n’est pas une version premium du prompt engineering.
C’est un **cycle de production structuré**, outillé et vérifiable.

---

## Partie 5 — Requirement vs Specification

### Objectif
Poser la distinction racine.

### Message principal
Un requirement n’est pas encore une specification.

### À expliquer
- **Requirement** : exigence, intention, comportement attendu, contrainte.
- **Specification** : formulation structurée, précise, vérifiable, exploitable.
- On ne se contente pas d’avoir des exigences : on doit les **spécifier**.

### Angle satirique
Pour échouer, il faut :

- faire croire qu’une story suffit ;
- confondre backlog et specification ;
- ne pas décliner les exigences ;
- tout mélanger entre besoin, solution, règle, cas, story, ticket.

### Pointe humoristique possible
Ceux qui savent très bien décliner des exigences existent… mais ils fabriquent souvent des avions, des moteurs d’avion, des sous-marins ou des systèmes critiques.
Donc surtout, ne prenons pas exemple sur eux.

### Point de vigilance important
Cette partie devra bien préparer la suivante :

- une **bonne specification** ne se limite pas au fonctionnel ;
- une équipe qui oublie le non fonctionnel se condamne très vite.

---

## Partie 6 — Deuxième sabotage : réduire la qualité au seul fonctionnel

### Objectif
Montrer qu’on tue un projet en oubliant tout ce qui n’est pas visible dans un happy path.

### Message principal
La meilleure manière d’échouer est de se concentrer uniquement sur le fonctionnel apparent.

### Ce qu’il faut saboter volontairement
- performance ;
- robustesse ;
- sécurité ;
- maintenabilité ;
- observabilité ;
- compatibilité ;
- accessibilité ;
- comportement sous contrainte.

### Angle satirique
- Les tests ? Juste pour rassurer le management.
- Surtout pas pour soutenir une vraie démarche qualité.
- Surtout pas pour faire vivre un niveau d’exigence technique.

### Contraste possible
Faire apparaître, même brièvement, l’idée que la qualité est multidimensionnelle, par exemple via l’ISO 25010, pour mieux montrer ce qu’on efface lorsqu’on ne garde que le fonctionnel.

---

## Partie 7 — Faire croire que le BDD, c’est autre chose que le BDD

### Objectif
Ouvrir la séquence BDD avec des contre-vérités classiques.

### Fausses définitions à enchaîner
1. **BDD = base de données**.
2. **BDD = du Given / When / Then**.
3. **BDD = du Gherkin**.
4. **BDD = du test automatisé**.
5. **BDD = une variante chic du test**.

### Anecdote à utiliser
Sur un recrutement, une part importante des candidats a compris **base de données** au lieu de **Behaviour-Driven Development**.

### Effet recherché
Faire rire, puis faire comprendre que si le mot est mal compris, la pratique a peu de chances d’être bien appliquée.

---

## Partie 8 — Ce qu’est réellement le BDD

### Objectif
Redresser proprement la définition.

### Message principal
Le BDD est une **démarche de découverte, formulation et automation du comportement**.

### Les trois temps à présenter
1. **Discovery**
   - exploration collaborative du comportement ;
   - usage d’exemples ;
   - Example Mapping comme outil central.

2. **Formulation**
   - transformation de cette compréhension en langage partagé et exécutable ;
   - souvent via Gherkin.

3. **Automation**
   - passage à l’exécutable ;
   - lien naturel avec l’ATDD.

### Message annexe important
- le BDD n’est pas un format de fichier ;
- le BDD n’est pas réductible à l’automatisation ;
- le BDD vit beaucoup mieux lorsqu’il reste cohérent avec le domaine, le vocabulaire métier et les choix de design.

---

## Partie 9 — Saboter la Discovery : détruire l’Example Mapping

### Objectif
Montrer comment casser la phase la plus précieuse.

### Rappel
Dans un atelier d’Example Mapping, on cherche à faire émerger :

- les règles métier ;
- les invariants ;
- les questions ouvertes ;
- des exemples ;
- une compréhension commune.

### Techniques de sabotage
1. Ne pas réunir les **three amigos**.
2. Oublier les développeurs.
3. Oublier les testeurs.
4. Oublier les sachants métier.
5. Dire que cela prend trop de temps.
6. Ne garder que le happy path.
7. Remplacer les règles métier par des expressions de solution.
8. Mettre directement le tout dans Jira et lancer l’implémentation.

### Message clé
Le développeur ne doit pas découvrir la vraie règle au moment où ça tourne en production.
Il doit être acteur de la spécification.

### Application au fil rouge “ajout au panier”
Quelques exemples de sabotage possibles :

- “Quand je clique sur le bouton Ajouter au panier, le produit s’ajoute.”
- “Quand l’utilisateur est sur la fiche produit, il voit un toast de confirmation.”

Ces formulations sentent déjà la solution, l’UI, et parfois même l’implémentation.
Elles ne révèlent pas encore clairement les règles métier.

---

## Partie 10 — Saboter la Formulation : écrire des spécifications anémiques

### Objectif
Faire sentir la différence entre un Gherkin pauvre et une vraie specification.

### Message principal
Une mauvaise formulation donne une impression de rigueur, mais laisse les trous les plus dangereux intacts.

### Ce qu’il faut montrer
- un Gherkin réduit à quelques scénarios plats ;
- uniquement le happy path ;
- aucun cas limite ;
- aucune règle explicite ;
- aucune structure ;
- aucune traçabilité ;
- aucune intention claire.

### Contraste à montrer
Présenter une structure plus riche avec :

- `Feature`
- `Rule`
- `Example` ou `Scenario Outline`
- tags
- cas limites
- langage métier stable

### Message de fond
Plus les specifications deviennent riches, propres et cohérentes, plus elles constituent :

- une documentation vivante pour l’équipe ;
- une base exploitable pour l’automatisation ;
- un matériau de qualité pour l’IA.

---

## Partie 11 — Étape volontairement oubliée par beaucoup d’équipes : le design

### Objectif
Faire de cette étape un pivot central de la conférence.

### Message principal
Entre specification et implémentation, il y a du **design**.
Et faire disparaître cette étape est l’un des meilleurs moyens de faire échouer le projet.

### Ce qu’il faut dire
Le design, ce n’est pas seulement “faire de l’architecture”.
C’est le moment où la compréhension devient structure.

### Cela peut inclure
- design UX ;
- écrans et parcours ;
- interfaces ;
- signatures ;
- protocoles d’échange ;
- modélisation ;
- décisions de structuration ;
- langage partagé.

### Angle satirique
Pour échouer :

- faire croire que l’IA complètera les blancs ;
- confondre génération de code et conception ;
- supprimer les discussions de modélisation ;
- faire comme si les écrans suffisaient à spécifier le comportement.

### Point très important
Cette partie doit être **autonome** et forte.
Tu as explicitement demandé à en faire un bloc dédié.

---

## Partie 12 — DDD stratégique, DDD tactique et MDD

### Objectif
Séparer clairement trois choses souvent mélangées.

### 12.1 — DDD stratégique

#### But
Parler de découpage, de frontières, de contextes, d’alignement métier.

#### Message
Pour saboter un projet, il faut éviter les discussions sur :

- bounded contexts ;
- frontières de langage ;
- responsabilités métier ;
- cohérence entre équipes et domaines.

#### Angle
Si tout le monde utilise les mêmes mots pour parler de choses différentes, on est sur la bonne voie pour échouer.

### 12.2 — DDD tactique

#### But
Montrer la modélisation fine du domaine.

#### Éléments possibles
- entités ;
- value objects ;
- agrégats ;
- invariants ;
- services de domaine.

#### Angle satirique
Les agrégats sont des mots barbares.
Donc surtout, n’essayons pas de modéliser le monde que l’on manipule.

### 12.3 — MDD (Model Driven Design)

#### But
Montrer que le modèle ne sert pas qu’à documenter ; il structure la conception.

#### Message
Le modèle n’est pas un dessin décoratif.
C’est une représentation opérationnelle du monde que l’équipe partage et raffine.

#### Angle satirique
Pour échouer :

- garder des modèles implicites ;
- laisser chaque développeur inventer son propre monde ;
- ne jamais aligner les specs, le code et le vocabulaire.

### Lien avec le reste de la conférence
Cette partie doit montrer que le design et la modélisation ne sont pas des extras.
Ils servent directement la qualité des specifications, des tests et de l’implémentation assistée par IA.

---

## Partie 13 — Revenir à l’ATDD : l’automation n’est pas un simple “go exécute”

### Objectif
Repositionner proprement l’ATDD après la Discovery, la Formulation et le design.

### Message principal
L’ATDD n’est pas un bouton de lancement.
C’est une manière de piloter l’implémentation par des tests d’acceptation explicites.

### Ce qu’il faut dire
- on part de comportements clarifiés ;
- on dispose de specifications plus solides ;
- on a déjà commencé à designer ;
- on utilise les tests d’acceptation pour cadrer et vérifier.

### Angle satirique
Pour saboter :

- oublier le design ;
- croire que l’acceptance test remplace toute réflexion ;
- écrire des tests pauvres ;
- oublier l’UX ;
- oublier les contrats d’interface ;
- oublier la cohérence du domaine.

---

## Partie 14 — La planification : le grand angle mort du faux SDD

### Objectif
Montrer que le SDD ne s’arrête pas à la specification.

### Message principal
Une specification n’est pas une téléportation vers du code correct.
Il faut encore **planifier**.

### Ce que le plan peut contenir
- les sous-problèmes ;
- les tests à écrire ;
- les signatures ou interfaces visées ;
- les dépendances ;
- l’ordre d’implémentation ;
- les points à risque ;
- la stratégie de validation.

### Angle satirique
Pour échouer :

- ne pas faire de plan ;
- faire un plan vide ;
- faire un plan sans tests ;
- faire un plan sans design ;
- faire un plan sans découpage ;
- faire un plan que personne ne challenge.

### Message de fond
Le plan est le pont entre la specification et les boucles d’implémentation.

---

## Partie 15 — L’IA : ne surtout pas l’utiliser pour challenger, auditer et améliorer

### Objectif
Renverser un contresens courant.

### Message principal
L’une des plus grandes forces de l’IA est de challenger les zones floues.
Donc, si on veut échouer, il faut surtout s’en priver.

### Sabotages à recommander ironiquement
- ne pas lui demander de repérer les ambiguïtés ;
- ne pas lui demander de lister les cas limites ;
- ne pas lui demander de challenger les invariants ;
- ne pas lui demander de relever les trous non fonctionnels ;
- ne pas lui demander d’améliorer la clarté d’une specification.

### Message de fond
L’IA ne sert pas seulement à générer du code.
Elle peut augmenter la qualité des artefacts **en amont**.

---

## Partie 16 — Saboter le TDD : le réduire à “red, green, refactor” sans pensée

### Objectif
Montrer que le TDD est souvent caricaturé de manière mécanique.

### Message principal
Le TDD n’est pas juste “écrire le test d’abord”.
Ce n’est pas non plus une incantation récité à trois mots.

### Ce qu’il faut corriger
- **Red** : montrer qu’un comportement attendu n’existe pas encore.
- **Green** : implémenter juste assez pour satisfaire le test.
- **Refactor** : améliorer le design et la lisibilité sans changer le comportement.

Mais surtout :
- choisir le **prochain petit comportement** ;
- découper ;
- laisser le test guider la conception ;
- améliorer aussi les tests ;
- faire émerger une meilleure structure du code.

### Version plus précise du cycle à raconter
1. choisir le prochain micro-comportement à produire ;
2. écrire un test qui exprime clairement l’intention ;
3. vérifier qu’il échoue pour la bonne raison ;
4. écrire le minimum de code utile ;
5. faire passer le test ;
6. refactorer le code de production ;
7. refactorer les tests si nécessaire ;
8. revalider ;
9. passer au comportement suivant.

### Angle satirique
Pour échouer :

- faire du test first sans intention ;
- tester le trivial ;
- ne jamais refactorer ;
- écrire des tests illisibles ;
- perdre le lien avec le métier ;
- considérer que les tests n’ont aucune valeur documentaire.

### Message important à marteler
Des tests clairs, structurés et cohérents deviennent aussi une excellente documentation pour l’IA.
Donc si l’on veut vraiment saboter le projet, il faut éviter de produire de bons tests.

---

## Partie 17 — Sous-plans, sous-boucles et exécution fine

### Objectif
Montrer à quel point une équipe peut devenir efficace quand elle découpe bien.

### Message principal
Une équipe mature sait transformer un plan global en sous-plans, puis en boucles locales de design, test et implémentation.

### Ce qu’il faut montrer
- un plan global ;
- un sous-plan par sous-partie ;
- des tests d’acceptation à l’extérieur ;
- des boucles TDD à l’intérieur ;
- un usage de l’IA dans un cadre bien défini.

### Angle satirique
Le problème, c’est que si on fait cela correctement…
**ça risque franchement de marcher.**

---

## Partie 18 — Vue d’ensemble : ce qu’est réellement le Spec Driven Development

### Objectif
Recomposer le cycle complet.

### Message principal
Le Spec Driven Development n’est ni du craft rebrandé, ni de l’agile rebrandé, ni du waterfall rebrandé, ni du vibe coding avec de meilleurs prompts.

### Cycle de synthèse proposé
1. clarifier les exigences ;
2. les spécifier réellement ;
3. explorer les comportements ;
4. formuler proprement ;
5. designer ;
6. modéliser ;
7. planifier ;
8. automatiser ;
9. implémenter avec des boucles fines ;
10. produire des artefacts durables.

### Message final de la partie
Comme les agents et LLM interprètent du langage, la qualité du langage, du modèle, des tests et des specifications devient stratégique.

---

## Partie 19 — Révélation finale

### Objectif
Retomber clairement sur la vérité après la satire.

### Formulation possible
- Nous avons vu comment faire échouer une équipe.
- En réalité, nous avons surtout vu comment les pratiques échouent quand on les caricature.
- Le problème n’est ni le BDD, ni l’ATDD, ni le TDD, ni l’IA.
- Le problème, c’est la confusion, l’absence de métier, l’absence de design, la pauvreté des specifications et l’abandon du sens.

### Conclusion forte
L’IA ne remplace pas les fondamentaux.
Elle rend leur bonne application encore plus décisive.

---

## Partie 20 — Remerciements, QR code, diffusion

### Objectif
Clore proprement et ouvrir une suite.

### Contenu
- merci ;
- QR code vers la présentation ;
- invitation à se connecter sur LinkedIn ;
- proposition d’enregistrer la conférence pour YouTube si elle suscite de l’intérêt.

---

## Partie 21 — Bibliographie

### Objectif
Donner des ressources sérieuses, même quand elles ne parlent pas explicitement d’IA.

### Orientation
Prévoir ensuite une bibliographie structurée autour de :

- BDD ;
- formulation ;
- Example Mapping ;
- TDD ;
- software craft ;
- DDD ;
- qualité logicielle.

---

## Partie 22 — Questions / échanges

### Objectif
Terminer sur l’interaction.

### Formulation simple
**Il est temps de poser vos questions.**

---

# Arc narratif synthétique

1. Je pose le cadre et le ton.
2. Je montre la confusion la plus moderne : faire passer le vibe coding pour du SDD.
3. Je reviens à la racine : requirement n’est pas specification.
4. Je montre qu’oublier le non fonctionnel prépare déjà l’échec.
5. Je démonte les fausses définitions du BDD.
6. Je redonne la vraie démarche BDD.
7. Je sabote la Discovery via un mauvais Example Mapping.
8. Je sabote la Formulation via un Gherkin anémique.
9. Je réintroduis le design comme étape indispensable.
10. Je distingue DDD stratégique, DDD tactique et MDD.
11. Je repositionne l’ATDD et la planification.
12. Je montre le vrai rôle possible de l’IA.
13. Je fais un passage plus précis sur le TDD.
14. Je montre comment tout cela se boucle dans un vrai SDD.
15. Je conclus que la précision du langage, du modèle et des tests est devenue encore plus cruciale avec l’IA.

---

# Messages clés à marteler

- Une exigence n’est pas encore une specification.
- Une specification n’est pas juste une story un peu mieux écrite.
- Une specification ne doit pas se limiter au fonctionnel apparent.
- Le BDD n’est ni un outil, ni un format de fichier, ni juste du test.
- Le Gherkin n’est pas le BDD.
- L’Example Mapping n’est pas une cérémonie décorative.
- Le design ne disparaît pas avec l’IA.
- DDD stratégique, DDD tactique et MDD ne jouent pas le même rôle.
- L’ATDD n’est pas un bouton “go”.
- Le TDD n’est pas juste “test first”.
- L’IA amplifie autant la qualité que la médiocrité des artefacts qu’on lui donne.
- De bonnes specifications et de bons tests deviennent aussi une documentation vivante pour l’IA.

---

# Questions encore ouvertes

## 1. Exemple fil rouge
J’ai retenu **ajouter un article au panier**.
C’est, à ce stade, le meilleur compromis simplicité / richesse.

## 2. Niveau exact d’ironie
Le plan actuel est **équilibré entre humour et pédagogie**.
On pourra ensuite le rendre :
- plus mordant,
- plus “conférence sérieuse avec twist”,
- ou plus démonstratif.

## 3. Bibliographie
La structure est prête, mais il faudra maintenant la remplir.

## 4. Prochaine étape conseillée
La suite la plus logique est de produire une **version resserrée partie par partie**, avec pour chacune :

- intention ;
- message clé ;
- exemple fil rouge ;
- ce qu’on montre au public ;
- chute / transition.

C’est cette version qui servira ensuite presque directement au mapping en slides.
