This project repository is connected to the journal article: <br>
**‘Pesticides Never Walk Alone: Mixture Toxicity and Toxicokinetics of Five Formulated Pesticide Products in the Soil Arthropod Folsomia candida’** by Wehrli et al. 2026 (doi TBA). 

The key element of this repository is the integration of a one-compartment TK model including phase-one biotransformation (TK-metabolism) and dynamic exposure in the BYOM platform (https://www.debtox.info/byom.html). 

*How to run this model for your own work?*    
Navigate to "BYOM/TK-metabolism", run "pathdefine.m", use "byom_metabolism_template.m" as your template. <br>
Use molar concentrations as an input.
 <br>
 <br>
*If you struggle with long runtime we recommend the following:*<br>
1. The stiffness in the ODE causes difficulties with datasets with a long time axis and large contribution of steady state sections to the total experimental time.<br>
   Solution: As a workaround compress the time axis by using days/10 as a model input (here: 2.8 instead of 28 d) -> !After fitting, divide all resulting rate constants (and their confidence intervals) by 10 to recover real-time values.<br>
2. The default BYOM parameter space explorer only uses one single core.<br>
   Solution: We implemented multi-core execution using the Parallel Computing Toolbox (see file: README_activate_multiple_cores.pptx)<br>

After running thescripts, "extract\_data\_from\_fig\_template.m" can be used to export your model fits.
