mongodb-qt-casadocodigo
=======================

MongoDB + Qt (QML)
-------------------------

* Database.....: *test*
* Collection...: *seriados*

* Carga 

```
 mongo < db/seriados.js

```

* Exemplo de documento

```
db.seriados.findOne()
 
{
    "_id" : ObjectId("1"),
    "nome" : "Breaking Bad",
    "personagens" : [ 
        "Walter White", 
        "Skyler White", 
        "Jesse Pinkman", 
        "Hank Schrader", 
        "Marie Schrader ", 
        "Saul Goodman"
    ]
}
```

# Rodando


```
 qml seriados.qml

```
