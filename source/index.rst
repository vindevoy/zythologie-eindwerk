.. zythologie eindwerk master file

   Author: Yves Vindevogel (vindevoy)
   Date: 2021-01-13



###################
Eindwerk Zythologie
###################

.. the homepage is just the title above and the foreword and thankword below. They are not part of the menu

.. only:: html

  .. include:: home/voorwoord.rst
  .. include:: home/dankwoord.rst



.. only latex is here to avoid the titles on the home page

.. only:: latex

  .. toctree::
    :caption: Inhoudstabel
    :hidden:
    :includehidden:

  Inhoud
  ######

  .. toctree::
    :caption: Inhoud
    :hidden:
    :numbered:

    inhoud/inhoud_1.rst
    inhoud/inhoud_2.rst


  Foodpairing
  ###########

  .. include:: foodpairing/gerechten.rst

  .. toctree::
    :caption: Foodpairing
    :hidden:
    
    foodpairing/gerecht_1.rst
    foodpairing/gerecht_2.rst
    foodpairing/gerecht_3.rst
    foodpairing/gerecht_4.rst

  Documentatie
  ############

  .. toctree::
    :caption: Documentatie
    :hidden:
    
    documentatie/bronnen.rst
