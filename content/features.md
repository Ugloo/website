---
title: "Les fonctionnalités Ugloo"
description: "Stockage objet compatible S3, distribué par protocole DeepTorrent"
menu: main
weight: 31
image: images/Ugloo-global-features-TBC.png
# TODO: nettoyer l'image
image_alt: "Diagram showing Ugloo global behaviour"
tags: ["fonctionnalités", "S3", "élastique", "sécurité", "souveraineté"]
# TODO: revoir les tags à dispo
sidebar_left: sidebar-features
---
Ugloo est une solution de stockage compatible `S3`, élastique, résiliante, _multi-tenant_, résistant au cyberattaques, à des coûts maîtrisés.  
Elle est déployable sur des serveurs physiques, des machines virtuelles, des plateformes de conteneurs, que ce soit dans vos datacenters, chez votre hébergeur, dans le _Cloud_ public ou sur des environnements hybrides.  


### Compatibilité AWS S3
<!-- TODO: faire un encadré de couleur autour du h2. -->
<!-- BUG: corriger l'affichage des images  -->

![Logo Amazon S3](https://1313-lpiot-gitpodworkspace-1ik5jt7i7s6.ws-eu110.gitpod.io/images/Amazon-S3-logo.png "Logo Amazon S3").

Basé sur un _fork_ de [MinIO](https://min.io/), `Uglo` est pleinement compatible avec les _API_s d'`AWS S3`.  
`Ugloo` peut donc servir de stockage à toute application tirant parti d'un stockage objet S3.

#### Elasticité

`Ugloo` tire pleinement parti des capacités de stockage élastique nativement fournie par la technologie de stockage objet.  
Dans le détail, il présente [les mêmes limites de l'API S3 que MinIO](https://github.com/minio/minio/blob/master/docs/minio-limits.md#limits-of-s3-api).

* nombre max d'objets dans un _bucket_ : illimité
* taille max d'un objet : 5 To
* taille max d'un objet multi-part : 50 To

#### Gestion de versions et cycle de vie

`Ugloo` supporte nativement la gestion de multiples versions (immuables) d'un même objet `S3`.  
Pour un objet donné, on peut donc accéder à /supprimer une version spécifique, et gérer la configuration d'un délai d'expiration pour chaque version spécifique.
`Ugloo` supporte les _locks_ `S3` natifs pour mettre en place des délais de conservation réglementaire.

![Locks Amazon S3](https://1313-lpiot-gitpodworkspace-1ik5jt7i7s6.ws-eu110.gitpod.io/images/S3-lock.png "Locks Amazon S3").

### Protocole DeepTorrent

![Icône DeepTorrent](https://1313-lpiot-gitpodworkspace-1ik5jt7i7s6.ws-eu110.gitpod.io/images/DeepTorrent-icon.png "Icône DeepTorrent").

#### Décentralisé

![Icône distribué](https://1313-lpiot-gitpodworkspace-1ik5jt7i7s6.ws-eu110.gitpod.io/images/distributed-icon.png "Icône distribué").
<!-- TODO: revoir la couleur de l'icone -->
Avec sa technologie brevetée `DeepTorrent`, `Ugloo` décentralise à 100% le stockage de vos données quelque soit la topologie de vos infrastructures.​  
`DeepTorrent` est une extension du protocole `BitTorrent`, pour répondre aux besoins spécifiques de la solution `Ugloo`.  
<!-- TODO: ajouter un petit descriptif du fonctionnement BitTorrent.   -->

#### Résilient

![Icône boucle infinie](https://1313-lpiot-gitpodworkspace-1ik5jt7i7s6.ws-eu110.gitpod.io/images/infinite-loop-icon.jpg "Icône boucle infinie")

Après chiffrement, chaque objet `S3` est fragmenté. Ces fragments sont dispersés sur l'ensemble du _cluster_, de manière multi-redondée (_erasure coding_).​  
La redondance et les vérification/reconstruction automatiques des fragments vous apportent une **garantie à vie** de vos données​, avec un **niveau de sécurité inégalable**.

#### Elastique

![Icône élastique](https://1313-lpiot-gitpodworkspace-1ik5jt7i7s6.ws-eu110.gitpod.io/images/elastic-icon.jpg "Icône élastique")

A tout moment, la capacité et la performance du _cluster_ peuvent être revues (à la hausse ou à la baisse) en jouant sur le nombre de disques, le nombre de nœuds, **sans interuption de service**.  
La répartition des fragments se fait alors automatiquement, en tâche de fond, sans reconfiguration de l'_erasure code_.

#### Versatile

`BitTorrent` est nativement adapté aux topologies réseaux hétérogènes et hostiles.  
Les composants logiciels d'`Ugloo` sont déployés sous forme de _containers_ `Docker`.  
Ainsi, la solution `Ugloo` saura fonctionner quelque soit la topologie de vos infrastructures :
* installée sous forme d'appliances dans vos datacenters ou chez vos hébergeurs,
* déployée sous forme de _containers_, sur vos serveurs physiques, vos _VMs_, dans vos _clusters_ `Kubernetes`, ou sur vos infras de _Cloud_ public,
* hébergée sur un seul site, plusieurs, voire plusieurs régions
* sous forme hybride et/ou multi-fournisseurs

### Sécurité

#### Chiffrement des données

`Ugloo` implémente l'état de l'art en terme de chiffrement de données

#### Protocole BitTorrent audité

`Ugloo` s'appuie sur la bibliothèque _open source_ [libtorrent](https://www.libtorrent.org/), qui a subit un [audit de sécurité, fin 2020](https://www.libtorrent.org/security-audit.html), commandité par [Mozilla Open Source Support Awards](https://www.mozilla.org/en-US/moss/) et mené par [include security](https://IncludeSecurity.com/).

#### Double immutabilité

![Icône immuabilité](https://1313-lpiot-gitpodworkspace-1ik5jt7i7s6.ws-eu110.gitpod.io/images/immutability.png "Icône immuabilité")

Les _ransomwares_ par _cryptolocking_ n'ont pas de prise sur la donnée stockée dans `Ugloo`. Chaque version d'un objet présente une double immuabilité :
* au niveau de la configuration de l'objet `S3` à travers [les modes de _lock_ et les délais de rétention.](#gestion-de-versions-et-cycle-de-vie)
* au niveau des fragments `DeepTorrent`, qui sont nativement immuables
  * avec délai de rétention réglementaire configurable
  * et corbeille récupérable 