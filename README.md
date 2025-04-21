# SH13


Ce projet est une implémentation en réseau du jeu d'enquête SH13, où les joueurs doivent découvrir le coupable par déduction.

## Installation des dépendances

Pour installer les bibliothèques SDL2 nécessaires sur Linux :

```bash
sudo apt-get update
sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```


## Compilation

Compiler le serveur et le code client :

```bash
make
```

## Exécution

### Démarrer le serveur :

```bash
make run_server
```


### Démarrer les clients dans  :

```bash
make run_client1
make run_client2
make run_client3
make run_client4
```

## Comment jouer

1. **Se connecter** : Cliquez sur le bouton "Connect" en haut à gauche de l'interface.


2. **Quand c'est votre tour** (bouton "Go" apparaît) :

   **Pour interroger sur un symbole spécifique** :
   - Cliquez sur un joueur dans la liste de gauche
   - Cliquez sur un symbole en haut
   - Cliquez sur "Go"
   - Tous les joueurs verront la réponse dans la grille centrale

   **Pour faire une observation générale** :
   - Cliquez sur un symbole en haut (sans sélectionner de joueur)
   - Cliquez sur "Go"
   - Les joueurs qui n'ont pas ce symbole seront indiqués

   **Pour accuser un personnage** :
   - Cliquez sur un des personnages dans la liste du bas
   - Cliquez sur "Go"
   - Si vous avez raison, vous gagnez !
   - Si vous avez tort, c'est au tour du joueur suivant

4. **Déductions** :
   - Cliquez dans la colonne de droite à côté d'un personnage pour marquer/démarquer un X (vos déductions personnelles)

Le but est de déterminer quel personnage est le coupable en éliminant les suspects grâce aux informations recueillies.


