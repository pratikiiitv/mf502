Problem: 
Optimal Blending of Two Raw Materials

A chemical plant produces a solvent blend by mixing two raw materials, Chemical A and Chemical B. The plant wants to minimize the cost of producing 100 liters of the solvent blend, while satisfying purity constraints.

Decision Variables:
Let  x be liters of Chemical A in the blend
Let y be liters of Chemical B in the blend

Objective:
Minimize the cost
Chemical A costs $5 per liter
Chemical B costs $3 per liter

Minimize:
Z=5x+3y

Constraints:

Total volume constraint:
The total blend must be 100 liters:
x+y=100

Purity constraint:
Chemical A contains 80% active ingredient, Chemical B contains 50%. The final blend must have at least 65% active ingredient:
0.80x+0.50y≥0.65(x+y)
Since  x+y=100, simplify:
0.80x+0.50(100−x)≥65

Non-negativity constraints:
x≥0,y≥0