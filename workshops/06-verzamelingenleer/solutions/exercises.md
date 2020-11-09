# 06 - Workshop Verzamelingenleer

## Oplossingen

1. Stel A = {1, 3, 5} en B = {4, 5, 6}. 

    Bepaal:
    1. A ∪ B
    2. A ∩ B 
    3. A \ B
    4. #A

    Oplossing:
    1. {1, 3, 4, 5, 6}
    2. {5}
    3. {1,3}
    4. 3

2. Stel A = {x ∈ ℕ | x is even} en B = {x ∈ ℕ | x is oneven}. 

    Bepaal:
    1. A ∪ B
    2. A ∩ B 
    3. A \ B.

    Oplossing:
    1. ℕ
    2. ∅
    3. A
    
3. Stel: 
    - 𝕌 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    - A = {1, 4, 7, 10}
    - B = {1, 2, 3, 4, 5}
    - C = {2, 4, 6, 8}

    Bepaal:
    1. B<sup>c</sup> ∩ (C \ A)
    2. 𝕌<sup>c</sup>
    3. (A ∩ B)<sup>c</sup> ∪ C.

    Oplossing:
    1. {6, 7, 8, 9, 10} ∩ {2, 6, 8} = {6, 8}
    2. ∅
    3. {2, 3, 5, 6, 7, 8, 9, 10} ∪ {2, 4, 6, 8} = {2, 3, 4, 5, 6, 7, 8, 9, 10}

4. Stel:
    - A = {x ∈ ℝ | 0 < x ≤ 2}
    - B = {x ∈ ℕ | 0 < x ≤ 2}
    - C = C = {1, 2}
    
    Zijn de volgende uitspraken waar?
    1. A = C
    2. B = C
    3. B ⊂ A
    4. C ⊂ A
    5. C ⊆ A
    6. C ⊆ B

    Oplossing:
    1. Fout, de verzameling A bevat oneindig veel elementen, nl. alle mogelijke reele getallen tussen 0 en 2; B = {1, 2}.
    2. Correct
    3. Correct
    4. Correct
    5. Correct
    6. Correct

5.  Zijn de volgende uitspraken correct?
    1. {x} ⊆ {x}
    2. {x} ∈ {x}
    3. x ⊆ {x}
    4. {x} ⊂ {x}
    5. {x} ⊆ {x, {x}}
    6. {x} ⊂ {x, {x}}
    7. {x} ∈ {x, {x}}
    8. x ∈ {x, {x}}

    Oplossing:
    1. Correct, een verzameling is steeds een deelverzameling van zichzelf.
    2. Fout, er geldt wel {x} ∈ {{x}} of x ∈ {x}.
    3. Fout, het element x is geen verzameling en dus kan x ook geen deelverzameling zijn van een verzameling. Er geldt wel {x} ⊆ {x}.
    4. Fout,  een verzameling is nooit een echte deelverzameling van zichzelf.
    5. Correct, het element x behoort tot de verzameling {x, {x}} en dus is {x} een deelverzameling van {x, {x}}.
    6. Correct, het element x behoort tot de verzameling {x, {x}} en x is niet het enige element van de verzameling {x, {x}}.
    7. Correct, de verzameling {x} behoort tot, m.a.w. is een element van, de verzameling {x, {x}}.
    8. Correct, het element x behoort tot de verzameling {x, {x}}.
    

6.  Ga na of de volgende gelijkheden voor drie willekeurige verzamelingen A, B en C correct zijn. Doe dit door gebruik te maken van venndiagrammen.
    1. A \ (B \ C) = (A \ B) ∪ (A ∩ C)
    2. (A ∪ B) ∩ C = (A ∪ C) ∩ B

    Oplossing:
    > Maak een tekening voor het linkerlid en een tekening voor het rechterlid. Indien beide tekeningen hetzelfde resultaat opleveren klopt de gelijkheid.
    1. Correct
    2. Foutief

7. Stel A = {0, {0}, {1}}. Welke van de volgende beweringen zijn waar?
    1. 0 ∈ A
    2. {0} ∈ A
    3. {0} ⊂ A
    4. {{0}} ⊂ A
    5. {1} ∈ A
    6. {1} ⊂ A
    7. {{1}} ⊂ A

    Oplossing:
    1. Waar
    2. Waar
    3. Waar
    4. Waar
    5. Waar
    6. Onwaar
    7. Waar

8. Stel A = {0, 1, {1}}. Welke van de volgende beweringen zijn waar?
    1. 0 ∈ A
    2. {0} ∈ A
    3. {0} ⊂ A
    4. {{0}} ⊂ A
    5. {1} ∈ A
    6. {1} ⊂ A
    7. {{1}} ⊂ A

    Oplossing:
    1. Waar
    2. Onwaar
    3. Waar
    4. Onwaar
    5. Waar
    6. Waar
    7. Waar

9. Gegeven:
    - 𝕌 = {x ∈ N|x ≤ 10}
    - A = {0, 5, 10}
    - B = {x ∈ N|2x ≤ 10}
    - C = A<sup>c</sup>

    Noteer de volgende verzamelingen d.m.v. opsomming:
    1. A \ B
    2. B \ A
    3. C
    4. B ∩ C
    5. A ∩ (B ∪ C)

    Oplossing:
    1. {10}
    2. {1, 2, 3, 4}
    3. {1, 2, 3, 4, 6, 7, 8, 9}
    4. {1, 2, 3, 4}
    5. {0, 5}

10. Gegeven:
- #𝕌 = 30
- #A = 9
- #B = 13
- #(A ∪ B) = 11

    Gevraagd:
    1. #(A<sup>c</sup>)
    2. #(A ∩ B)

    Oplossing:
    1. #(A<sup>c</sup>) = #(𝕌 \ A) = 30 − 9 = 21
    2. 3
        > Verklaring:  #(𝕌 \ (A ∪ B)) = 11 dus #(A ∪ B) = 19

## Oefeningen
Klik [hier](../exercises/exercises.md) om terug te gaan naar de oefeningen.