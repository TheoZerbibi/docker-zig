# Docker Zig

Ce dépôt vise à remplacer le dépôt [ziglang/docker-zig](https://github.com/ziglang/docker-zig) qui n'est pas activement maintenu.

Pour éviter que quelqu'un d'autre n'ait à refaire ce travail, ce dépôt est largement automatisé pour fournir une image Docker continuellement à jour.

## Utilisation

Pour utiliser cette image, vous pouvez par exemple utiliser la commande suivante:

```bash
docker run -it ghcr.io/theozerbibi/docker-zig bash
```

Il est également possible de l'utiliser comme base dans un dockerfile:

```Dockerfile
FROM ghcr.io/theozerbibi/docker-zig
```

## Auteurs

anclarma
thzeribi
