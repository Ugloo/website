---
title: "Protocole de stockage distribué DeepTorrent™"
# La description est utilisée comme résumé dans le digest de la homepage
description: "Ugloo a développé DeepTorrent, une technologie brevetée de stockage distribué, décentralisé et immuable, extension du protocole BitTorrent."
date: 2022-05-13T13:00:44+01:00
draft: false
images: ["DeepTorrent-icon.png"]
categories: ["features"]
tags: ["deeptorrent"]
keywords: ["DeepTorrent","BitTorrent","distributed","peer-to-peer","resilient"]
authors: ["Ludovic Piot"]
noindex: false
---

![Icône DeepTorrent](DeepTorrent-icon.png "Icône DeepTorrent™")
{ .col-md-4 .img-fluid .d-flex .mx-auto .align-items-center .rounded .p1 }

Issue de travaux de recherche universitaire, `Ugloo` a développé `DeepTorrent`™  
une technologie brevetée de **stockage distribué, décentralisé et immuable**, extension du protocole `BitTorrent`.
{ .alert .alert-warning }

# Décentralisé

![Icône distribué](distributed-icon.png "Icône distribué")
{ .col-md-2 .img-fluid .d-flex .mx-auto .align-items-center .rounded .p1 }

Avec sa technologie brevetée `DeepTorrent`™, `Ugloo` décentralise à 100% le stockage de vos données quelque soit la topologie de vos infrastructures.​  
`DeepTorrent` est une extension du protocole `BitTorrent`, pour répondre aux besoins spécifiques de la solution `Ugloo`.  
Le protocole `BitTorrent` est _OpenSource_. Il reste la solution avec le plus grand maillage de nœuds de stockage au monde.

`BitTorrent` est un protocole de stockage de fichiers _peer-to-peer_, qui permet le stockage, le partage et la distribution de fichiers volumineux via la sollicitation de pairs disposant d'une copie des-dits fichiers (tout ou parties). L'identification de ces pairs se fait dynamiquement.

# Résilient

![Icône boucle infinie](infinite-loop-icon.jpg "Icône boucle infinie")
{ .col-md-2 .img-fluid .d-flex .mx-auto .align-items-center .rounded .p1 }


Après chiffrement, chaque objet `S3` est divisé en 255 fragments maximum. Ces fragments sont dispersés sur l'ensemble des nœuds disponibles sur le _cluster_.​  
L’_Erasure Coding_ est une méthode de protection des données qui divise les données en fragments ; développés et chiffrés. Ceux-ci contiennent des éléments de données redondants et sont stockés sur différents sites ou supports de stockage. L'objectif est de pouvoir reconstruire les données qui ont été altérées lors du processus de stockage sur disque à partir des informations stockées dans d'autres emplacements du _cluster_.

La redondance et les vérification/reconstruction automatiques des fragments vous apportent une **garantie à vie** de vos données​, avec un **niveau de sécurité inégalable**.

# Elastique

![Icône élastique](elastic-icon.jpg "Icône élastique")
{ .col-md-2 .img-fluid .d-flex .mx-auto .align-items-center .rounded .p1 }


A tout moment, la capacité et la performance du _cluster_ peuvent être revues (à la hausse ou à la baisse) en jouant sur le nombre de disques, le nombre de nœuds, **sans interruption de service**.  
La répartition des fragments se fait alors automatiquement, en tâche de fond, sans reconfiguration de l'_erasure code_.

# Versatile

`BitTorrent` est nativement adapté aux topologies réseau hétérogènes et hostiles.  
Les composants logiciels d'`Ugloo` sont déployés sous forme de _containers_ `Docker`.  
Ainsi, la solution `Ugloo` saura fonctionner quelque soit la topologie de vos infrastructures :
* installée sous forme d'_appliances_ dans vos _datacenters_ ou chez vos hébergeurs,
* déployée sous forme de _containers_, sur vos serveurs physiques, vos _VMs_, dans vos _clusters_ `Kubernetes`, ou sur vos infras de _Cloud_ public,
* hébergée sur un seul site, plusieurs, voire plusieurs régions
* sous forme hybride et/ou multi-fournisseurs
