# ACTIVIDAD 2 - Cobertura en base a lógica
Sebastián Bitar y María Luisa Claro  
  

## Predicados y Cláusulas

Los predicados son los siguientes: 
* p1: is_hardcover
* p2: is_frecuent_client 
* p3: total_pages > 500 && total_pages_images >= 6
* p4: is_premium_book && (pages_of_text > 300 || total_pages_images >= 5) && !is_frecuent_client

Las cláusulas son los siguientes: 
* c1: is_hardcover
* c2: is_frecuent_client
* c3: total_pages > 500 
* c4: total_pages_images >= 6
* c5: is_premium_book
* p6: pages_of_text > 300 
* c7: total_pages_images >= 5
* c8: !is_frecuent_client


## Test Requirements y Test Cases

### Clause Coverage (CC)

Los *test requierements (TR)* son los siguientes
* TR1: c1 debe ser True
* TR2: c1 debe ser False
* TR3: c2 debe ser True
* TR4: c2 debe ser False
* TR5: c3 debe ser True
* TR6: c3 debe ser False
* TR7: c4 debe ser True
* TR8: c4 debe ser False
* TR9: c5 debe ser True
* TR10: c5 debe ser False
* TR11: c6 debe ser True
* TR12: c6 debe ser False  
* TR13: c7 debe ser True
* TR14: c7 debe ser False  
* TR15: c8 debe ser True
* TR16: c8 debe ser False

Dado los *test requierements (TR)*, los *test cases (TC)* serían:  
1. Para cumplir con TR1, TR3, TR5, TR7, TR9, TR11, TR13 TR16:  
    a. Input:
    * is_hardcover = true (!is_hardcover = false) 
    * is_frecuent_client = true
    * pages_of_text = 600, double_pages_images = 3, images = 1 (total_pages = 607, total_pages_images = 7)
    * is_premium_book = true
            
    b. Output: 10.000

2. Para cumplir con TR2, TR4, TR6, TR8, TR10, TR12, TR14 y TR15:
    a. Input:
    * is_hardcover = false (!is_hardcover = true) 
    * is_frecuent_client = false, 
    * pages_of_text = 200, double_pages_images = 1, images = 1 (total_pages = 203, total_pages_images = 7)
    * is_premium_book = false
            
    b. Output: 4000



### Correlated active clause coverage (CACC)