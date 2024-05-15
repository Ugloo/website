---
title: "Observabilité"
# La description est utilisée comme résumé dans le digest de la homepage
description: "Basé sur un fork de MinIO, Ugloo est un stockage objet distribué pleinement compatible avec les API d'AWS S3."
date: 2022-05-13T13:00:44+01:00
draft: false
images: ["Amazon-S3-logo.png","S3-lock.png"]
categories: ["features"]
tags: ["elastic"]
keywords: ["S3","Amazon","MinIO","elastic"]
authors: ["Ludovic Piot"]
noindex: false
---

![Stockage objet compatible AWS S3](Amazon-S3-logo.png "Logo Amazon S3")
{ .img-fluid }

> Basé sur un _fork_ de [MinIO](https://min.io/), `Ugloo` est pleinement compatible avec les _API_ d'`AWS S3`.  
> `Ugloo` peut donc servir de stockage à toute application tirant parti d'un stockage objet S3.

#### Audit / Analytique

Journalisation des évènements S3 pour chaque tenant.
Surveillance de l’état de santé du cluster via GUI ou API.
Paramétrage d’alertes sur les différentes métriques disponibles. 


`Ugloo` tire pleinement parti des capacités de stockage élastique nativement fournie par la technologie de stockage objet.  
Dans le détail, il présente [les mêmes limites de l'API S3 que MinIO](https://github.com/minio/minio/blob/master/docs/minio-limits.md#limits-of-s3-api).

* nombre max d'objets dans un _bucket_ : illimité
* taille max d'un objet : 5 To
* taille max d'un objet multi-part : 50 To

#### Gestion de versions et cycle de vie

`Ugloo` supporte nativement la gestion de multiples versions (immuables) d'un même objet `S3`.  
Pour un objet donné, on peut donc accéder à /supprimer une version spécifique, et gérer la configuration d'un délai d'expiration pour chaque version spécifique.
`Ugloo` supporte les _locks_ `S3` natifs pour mettre en place des délais de conservation réglementaire.

![Locks Amazon S3](S3-lock.png "Locks Amazon S3").

