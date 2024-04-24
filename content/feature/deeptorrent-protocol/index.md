---
title: "Protocole de stockage distribué DeepTorrent™"
# La description est utilisée comme résumé dans le digest de la homepage
description: "Ugloo a développé DeepTorrent, une technologie brevetée de stockage distribué, décentralisé et immuable, extension du protocole BitTorrent."
date: 2022-05-13T13:00:44+01:00
draft: false
# TODO:
images: ["DeepTorrent-icon.png"]
categories: ["features"]
tags: ["deeptorrent"]
keywords: ["DeepTorrent","BitTorrent","distributed","peer-to-peer","resilient"]
authors: ["Ludovic Piot"]
noindex: false
---

![Icône DeepTorrent](DeepTorrent-icon.png "Icône DeepTorrent™").
{ .img-fluid }

> Issue de travaux de recherche universitaire, `Ugloo` a développé `DeepTorrent`™  
> une technologie brevetée de **stockage distribué, décentralisé et immuable**,  
> extension du protocole `BitTorrent`.

# Décentralisé

![Icône distribué](distributed-icon.png "Icône distribué").
<!-- TODO: revoir la couleur de l'icone -->
Avec sa technologie brevetée `DeepTorrent`™, `Ugloo` décentralise à 100% le stockage de vos données quelque soit la topologie de vos infrastructures.​  
`DeepTorrent` est une extension du protocole `BitTorrent`, pour répondre aux besoins spécifiques de la solution `Ugloo`.  
<!-- TODO: ajouter un petit descriptif du fonctionnement BitTorrent.   -->

# Résilient

![Icône boucle infinie](infinite-loop-icon.jpg "Icône boucle infinie")

Après chiffrement, chaque objet `S3` est fragmenté. Ces fragments sont dispersés sur l'ensemble du _cluster_, de manière multi-redondée (_erasure coding_).​  
La redondance et les vérification/reconstruction automatiques des fragments vous apportent une **garantie à vie** de vos données​, avec un **niveau de sécurité inégalable**.

# Elastique

![Icône élastique](elastic-icon.jpg "Icône élastique")

A tout moment, la capacité et la performance du _cluster_ peuvent être revues (à la hausse ou à la baisse) en jouant sur le nombre de disques, le nombre de nœuds, **sans interuption de service**.  
La répartition des fragments se fait alors automatiquement, en tâche de fond, sans reconfiguration de l'_erasure code_.

# Versatile

`BitTorrent` est nativement adapté aux topologies réseaux hétérogènes et hostiles.  
Les composants logiciels d'`Ugloo` sont déployés sous forme de _containers_ `Docker`.  
Ainsi, la solution `Ugloo` saura fonctionner quelque soit la topologie de vos infrastructures :
* installée sous forme d'appliances dans vos datacenters ou chez vos hébergeurs,
* déployée sous forme de _containers_, sur vos serveurs physiques, vos _VMs_, dans vos _clusters_ `Kubernetes`, ou sur vos infras de _Cloud_ public,
* hébergée sur un seul site, plusieurs, voire plusieurs régions
* sous forme hybride et/ou multi-fournisseurs
