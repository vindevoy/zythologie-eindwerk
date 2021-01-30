..
  Author: Auteur

.. ZYTHOLOGIE EINDWERK MASTER FILE

.. Onderstaande toctree is enkel voor Latex. Die gebruikt de caption van de eerste toctree die hij tegenkomt als titel.

.. toctree::
  :caption: Inhoudstabel


.. HTML versie bevat een titel en het voor- en dankwoord op de thuispagina (home page).  Verder niets.
.. De toctree's worden gebruikt voor het menu op te vullen.  Elke link hier, zorgt voor een HTML blad.
.. De toctree's zijn hidden zodat ze niet op de home page getoond worden.

.. only:: html

  ###################
  Eindwerk Zythologie
  ###################

  .. include:: home/voorwoord.rst
  .. include:: home/dankwoord.rst

  .. toctree::
    :caption: Inhoud
    :hidden:
    :numbered:

    inhoud/inhoud_1.rst
    inhoud/inhoud_2.rst

  .. toctree::
    :caption: Foodpairing
    :hidden:
    
    foodpairing/gerecht_1.rst
    foodpairing/gerecht_2.rst
    foodpairing/gerecht_3.rst
    foodpairing/gerecht_4.rst

  .. toctree::
    :caption: Documentatie
    :hidden:
    
    documentatie/bronnen.rst
    documentatie/contacten.rst


.. Dit is de PDF versie.  De eerste titel moet er zijn voor de inhoudstabel. Latex maakt die vanaf "Inhoud".
.. Extra niveau's zijn nodig om alle inhoud in de PDF te krijgen.  Voor- en dankwoord zitten niet in een toctree.
.. We voegen ook een niveau toe op sommige plaatsen om extra hoofdstukken te vermijden.  Die nemen een te grote titel.

.. only:: latex


  ##############################
  PDF Versie Eindwerk Zythologie
  ##############################

  Inhoud
  ######

  Inleiding
  *********
  
  .. include:: home/voorwoord.rst
  .. include:: home/dankwoord.rst

  .. include:: inhoud/inhoud_1.rst
  .. include:: inhoud/inhoud_1_1.rst
  .. include:: inhoud/inhoud_1_2.rst
  .. include:: inhoud/inhoud_1_3.rst
  .. include:: inhoud/inhoud_1_4.rst
  .. include:: inhoud/inhoud_2.rst

  Foodpairing
  ###########

  .. include:: foodpairing/gerechten.rst
  .. include:: foodpairing/gerecht_1.rst
  .. include:: foodpairing/gerecht_2.rst
  .. include:: foodpairing/gerecht_3.rst
  .. include:: foodpairing/gerecht_4.rst

  Documentatie
  ############

  Bronnen 
  *******

  .. include:: documentatie/bronnen.rst
    :start-line: 7

  Extra Informatie
  ****************

  .. include:: documentatie/website.rst
