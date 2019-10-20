# Oefening 2 - Theoretisch

## Oplossing
- AB(<ins>a,b</ins>,c)
- ABD(<ins>a,b,d</ins>)
    - IR: `a,b` verwijst naar de `AB.a,b` en is **verplicht**
    - IR: `d` verwijst naar de `D.d` en is **verplicht**
- D(<ins>d</ins>,e)
    - IR: `e` verwijst naar de  `E` en is **verplicht???**
- E(<ins>e</ins>,f1,f2)

## Stappenplan
### 1NV
- R<sub>11</sub>(<ins>a,b</ins>,c)
- R<sub>12</sub>(<ins>a,b,d</ins>,e,f1,f2)

### 2NV
- R<sub>21</sub>(<ins>a,b</ins>,c)
- R<sub>22</sub>(<ins>a,b,d</ins>)
- R<sub>23</sub>(<ins>d</ins>,e,f1,f2)

### 3NV
- R<sub>31</sub>(<ins>a,b</ins>,c)
- R<sub>32</sub>(<ins>a,b,d</ins>)
- R<sub>33</sub>(<ins>d</ins>,e)
- R<sub>34</sub>(<ins>e</ins>,f1,f2)

### Relationeel Model
- AB(<ins>a,b</ins>,c)
- ABD(<ins>a,b,d</ins>)
    - IR: `a,b` verwijst naar de `AB.a,b` en is **verplicht**
    - IR: `d` verwijst naar de `D.d` en is **verplicht**
- D(<ins>d</ins>,e)
    - IR: `e` verwijst naar de  `E` en is **??**
        - Zonder meer uitleg weten we niet of `e` verplicht is of niet, het is namelijk geen deel van de Primary Key.
- E(<ins>e</ins>,f1,f2)

## Oefeningen
Klik [hier](../exercises.md) om terug te gaan naar de oefeningen.