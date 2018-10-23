︠54cbdec4-ceb1-4740-9b97-cbf7c948100es︠
M = MatrixSpace(GF(5),5,7)
A = M([2,-1,-1,0,0,0,0,
       -1,0,2,-1,0,0,0,
       0,0,-1,2,-1,0,0,
       0,0,0,-1,2,-1,0,
       0,0,0,0,-1,2,-1
       ])

M2 = MatrixSpace(GF(5), 4, 6)
B = M2([2,-1,-1,0,0,0,
        -1,0,2,-1,0,0,
        0,0,-1,2,0,-1,
        0,0,0,-1,2,-1
])
︡4d00c739-01ce-417f-9d8a-3ce0de82b74b︡︡{"done":true}
︠bce78312-ace8-40e6-ad07-2b271937f954s︠
A
print('\n')
B

A.rank()
B.rank()
︡3cadff74-a242-43f0-9fbf-2f0029067200︡︡{"stdout":"[2 4 4 0 0 0 0]\n[4 0 2 4 0 0 0]\n[0 0 4 2 4 0 0]\n[0 0 0 4 2 4 0]\n[0 0 0 0 4 2 4]\n"}︡{"stdout":"\n\n"}︡{"stdout":"[2 4 4 0 0 0]\n[4 0 2 4 0 0]\n[0 0 4 2 0 4]\n[0 0 0 4 2 4]\n"}︡{"stdout":"5\n"}︡{"stdout":"4\n"}︡{"done":true}
︠105f94ff-65b6-48ac-8730-4d7d4243b521s︠

︡d722538b-8de0-481a-9493-d0d9b43ff282︡︡{"done":true}
︠1e471512-9a45-4d5c-a932-1aa7400044f7s︠

︡056e70da-e15f-467f-ac5f-394c68374f0e︡︡{"done":true}
︠2a8980c4-85e9-42f3-b29f-c330d6bcc996s︠
A.kernel()
B.kernel()
︡aa7cc840-24e8-468a-875c-0a0300137ce3︡︡{"stdout":"Vector space of degree 5 and dimension 0 over Finite Field of size 5\nBasis matrix:\n[]\n"}︡{"stdout":"Vector space of degree 4 and dimension 0 over Finite Field of size 5\nBasis matrix:\n[]\n"}︡{"done":true}
︠b4b57c1f-0a40-4cc4-b461-624dcc655adfs︠
A.echelon_form()
B.echelon_form()
︡ecc4d55c-7bd7-43c7-8f39-6128e86fb076︡︡{"stdout":"[1 0 0 0 0 0 4]\n[0 1 0 0 0 4 0]\n[0 0 1 0 0 1 3]\n[0 0 0 1 0 2 2]\n[0 0 0 0 1 3 1]\n"}︡{"stdout":"[1 0 0 0 4 0]\n[0 1 0 0 2 2]\n[0 0 1 0 1 3]\n[0 0 0 1 3 1]\n"}︡{"done":true}
︠9275254e-70db-448d-9017-8fb7f114a442s︠
B.nullity()
︡e2a34d2a-f068-46f8-8e26-38e68d807c77︡︡{"stdout":"0\n"}︡{"done":true}
︠f3e8c38e-46f9-41b7-aaef-973a9891f682︠









