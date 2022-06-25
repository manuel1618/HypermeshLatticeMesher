cd D:/GITHUB/HypermeshLatticeMesher/.git/HypermeshLatticeMesher/HypermeshLatticeMesher/exporter/TCLScript/
*templatefileset "C:/Program Files/Altair/2021.2/hwdesktop/templates/feoutput/optistruct/optistruct"
*createentity mats cardimage=MAT1 includeid=0 name="Material1"
*setvalue mats name="Material1" id={mats 1}
*setvalue mats id=1 STATUS=1 1=210000
*setvalue mats id=1 STATUS=1 3=0.3
*setvalue mats id=1 STATUS=1 4=7.8e-09
*createentity props cardimage=PROD includeid=0 name="property_1"
*setvalue props name="property_1" id={props 1}
*createentity beamsectcols includeid=0 name="beamsectcol_1"
*createentity beamsects includeid=0 name="beamsection_1"
*setvalue beamsects name="beamsection_1" id={Beamsections 1}
*setvalue beamsects id=1 beamsect_dim1=0.2
*clearmark beamsects 1
*setvalue beamsects id=1 config=2
*setvalue props id=1 materialid={mats 1}
*setvalue props id=1 STATUS=2 3179={beamsects 1}
*createmark properties 1 "property_1"
*syncpropertybeamsectionvalues 1
*mergehistorystate "" ""
*createnode -10.313008308411 -7.0365853309631 -45.275356292725 0 0 0
*createnode -10.313008308411 -7.0365853309631 -35.275356292725 0 0 0
*createnode -10.313008308411 -7.0365853309631 -25.275356292725 0 0 0
*createnode -10.313008308411 -7.0365853309631 -15.275356292725 0 0 0
*createnode -10.313008308411 -7.0365853309631 -5.2753562927246 0 0 0
*createnode -10.313008308411 -7.0365853309631 4.7246437072754 0 0 0
*createnode -10.313008308411 -7.0365853309631 14.724643707275 0 0 0
*createnode -10.313008308411 -7.0365853309631 24.724643707275 0 0 0
*createnode -10.313008308411 -7.0365853309631 34.724643707275 0 0 0
*createnode -10.313008308411 -7.0365853309631 44.724643707275 0 0 0
*createnode -10.313008308411 -7.0365853309631 54.724643707275 0 0 0
*createnode -1.9796749750773 -7.0365853309631 54.724643707275 0 0 0
*createnode 6.353658358256 -7.0365853309631 54.724643707275 0 0 0
*createnode 14.686991691589 -7.0365853309631 54.724643707275 0 0 0
*createnode 14.686991691589 -7.0365853309631 44.724643707275 0 0 0
*createnode 14.686991691589 -7.0365853309631 34.724643707275 0 0 0
*createnode 14.686991691589 -7.0365853309631 24.724643707275 0 0 0
*createnode 14.686991691589 -7.0365853309631 14.724643707275 0 0 0
*createnode 14.686991691589 -7.0365853309631 4.7246437072754 0 0 0
*createnode 14.686991691589 -7.0365853309631 -5.2753562927246 0 0 0
*createnode 14.686991691589 -7.0365853309631 -15.275356292725 0 0 0
*createnode 14.686991691589 -7.0365853309631 -25.275356292725 0 0 0
*createnode 14.686991691589 -7.0365853309631 -35.275356292725 0 0 0
*createnode 14.686991691589 -7.0365853309631 -45.275356292725 0 0 0
*createnode 6.353658358256 -7.0365853309631 -45.275356292725 0 0 0
*createnode -1.9796749750773 -7.0365853309631 -45.275356292725 0 0 0
*createnode -1.9796749750773 -7.0365853309631 -35.275356292725 0 0 0
*createnode 6.353658358256 -7.0365853309631 -35.275356292725 0 0 0
*createnode -1.9796749750773 -7.0365853309631 -25.275356292725 0 0 0
*createnode 6.353658358256 -7.0365853309631 -25.275356292725 0 0 0
*createnode -1.9796749750773 -7.0365853309631 -15.275356292725 0 0 0
*createnode 6.353658358256 -7.0365853309631 -15.275356292725 0 0 0
*createnode -1.9796749750773 -7.0365853309631 -5.2753562927246 0 0 0
*createnode 6.353658358256 -7.0365853309631 -5.2753562927246 0 0 0
*createnode -1.9796749750773 -7.0365853309631 4.7246437072754 0 0 0
*createnode 6.353658358256 -7.0365853309631 4.7246437072754 0 0 0
*createnode -1.9796749750773 -7.0365853309631 14.724643707275 0 0 0
*createnode 6.353658358256 -7.0365853309631 14.724643707275 0 0 0
*createnode -1.9796749750773 -7.0365853309631 24.724643707275 0 0 0
*createnode 6.353658358256 -7.0365853309631 24.724643707275 0 0 0
*createnode -1.9796749750773 -7.0365853309631 34.724643707275 0 0 0
*createnode 6.353658358256 -7.0365853309631 34.724643707275 0 0 0
*createnode -1.9796749750773 -7.0365853309631 44.724643707275 0 0 0
*createnode 6.353658358256 -7.0365853309631 44.724643707275 0 0 0
*createnode 6.353658358256 1.2967480023702 -45.275356292725 0 0 0
*createnode 6.353658358256 1.2967480023702 -35.275356292725 0 0 0
*createnode 14.686991691589 1.2967480023702 -35.275356292725 0 0 0
*createnode 14.686991691589 1.2967480023702 -45.275356292725 0 0 0
*createnode 6.353658358256 9.6300813357035 -45.275356292725 0 0 0
*createnode 6.353658358256 9.6300813357035 -35.275356292725 0 0 0
*createnode 14.686991691589 9.6300813357035 -35.275356292725 0 0 0
*createnode 14.686991691589 9.6300813357035 -45.275356292725 0 0 0
*createnode 6.353658358256 17.963414669037 -45.275356292725 0 0 0
*createnode 6.353658358256 17.963414669037 -35.275356292725 0 0 0
*createnode 14.686991691589 17.963414669037 -35.275356292725 0 0 0
*createnode 14.686991691589 17.963414669037 -45.275356292725 0 0 0
*createnode -1.9796749750773 1.2967480023702 -45.275356292725 0 0 0
*createnode -1.9796749750773 1.2967480023702 -35.275356292725 0 0 0
*createnode -1.9796749750773 9.6300813357035 -45.275356292725 0 0 0
*createnode -1.9796749750773 9.6300813357035 -35.275356292725 0 0 0
*createnode -1.9796749750773 17.963414669037 -45.275356292725 0 0 0
*createnode -1.9796749750773 17.963414669037 -35.275356292725 0 0 0
*createnode 6.353658358256 1.2967480023702 24.724643707275 0 0 0
*createnode 6.353658358256 1.2967480023702 34.724643707275 0 0 0
*createnode 14.686991691589 1.2967480023702 34.724643707275 0 0 0
*createnode 14.686991691589 1.2967480023702 24.724643707275 0 0 0
*createnode 6.353658358256 9.6300813357035 24.724643707275 0 0 0
*createnode 6.353658358256 9.6300813357035 34.724643707275 0 0 0
*createnode 14.686991691589 9.6300813357035 34.724643707275 0 0 0
*createnode 14.686991691589 9.6300813357035 24.724643707275 0 0 0
*createnode 6.353658358256 17.963414669037 24.724643707275 0 0 0
*createnode 6.353658358256 17.963414669037 34.724643707275 0 0 0
*createnode 14.686991691589 17.963414669037 34.724643707275 0 0 0
*createnode 14.686991691589 17.963414669037 24.724643707275 0 0 0
*createnode 6.353658358256 1.2967480023702 44.724643707275 0 0 0
*createnode -1.9796749750773 1.2967480023702 34.724643707275 0 0 0
*createnode -1.9796749750773 1.2967480023702 44.724643707275 0 0 0
*createnode 6.353658358256 9.6300813357035 44.724643707275 0 0 0
*createnode -1.9796749750773 9.6300813357035 34.724643707275 0 0 0
*createnode -1.9796749750773 9.6300813357035 44.724643707275 0 0 0
*createnode 6.353658358256 17.963414669037 44.724643707275 0 0 0
*createnode -1.9796749750773 17.963414669037 34.724643707275 0 0 0
*createnode -1.9796749750773 17.963414669037 44.724643707275 0 0 0
*createnode 14.686991691589 1.2967480023702 44.724643707275 0 0 0
*createnode 14.686991691589 9.6300813357035 44.724643707275 0 0 0
*createnode 14.686991691589 17.963414669037 44.724643707275 0 0 0
*createnode 6.353658358256 1.2967480023702 -15.275356292725 0 0 0
*createnode 6.353658358256 1.2967480023702 -25.275356292725 0 0 0
*createnode -1.9796749750773 1.2967480023702 -25.275356292725 0 0 0
*createnode -1.9796749750773 1.2967480023702 -15.275356292725 0 0 0
*createnode 6.353658358256 9.6300813357035 -15.275356292725 0 0 0
*createnode 6.353658358256 9.6300813357035 -25.275356292725 0 0 0
*createnode -1.9796749750773 9.6300813357035 -25.275356292725 0 0 0
*createnode -1.9796749750773 9.6300813357035 -15.275356292725 0 0 0
*createnode 6.353658358256 17.963414669037 -15.275356292725 0 0 0
*createnode 6.353658358256 17.963414669037 -25.275356292725 0 0 0
*createnode -1.9796749750773 17.963414669037 -25.275356292725 0 0 0
*createnode -1.9796749750773 17.963414669037 -15.275356292725 0 0 0
*createnode -10.313008308411 1.2967480023702 -15.275356292725 0 0 0
*createnode -10.313008308411 1.2967480023702 -5.2753562927246 0 0 0
*createnode -1.9796749750773 1.2967480023702 -5.2753562927246 0 0 0
*createnode -10.313008308411 9.6300813357035 -15.275356292725 0 0 0
*createnode -10.313008308411 9.6300813357035 -5.2753562927246 0 0 0
*createnode -1.9796749750773 9.6300813357035 -5.2753562927246 0 0 0
*createnode -10.313008308411 17.963414669037 -15.275356292725 0 0 0
*createnode -10.313008308411 17.963414669037 -5.2753562927246 0 0 0
*createnode -1.9796749750773 17.963414669037 -5.2753562927246 0 0 0
*createnode -1.9796749750773 1.2967480023702 54.724643707275 0 0 0
*createnode -10.313008308411 1.2967480023702 44.724643707275 0 0 0
*createnode -10.313008308411 1.2967480023702 54.724643707275 0 0 0
*createnode -1.9796749750773 9.6300813357035 54.724643707275 0 0 0
*createnode -10.313008308411 9.6300813357035 44.724643707275 0 0 0
*createnode -10.313008308411 9.6300813357035 54.724643707275 0 0 0
*createnode -1.9796749750773 17.963414669037 54.724643707275 0 0 0
*createnode -10.313008308411 17.963414669037 44.724643707275 0 0 0
*createnode -10.313008308411 17.963414669037 54.724643707275 0 0 0
*createnode -10.313008308411 1.2967480023702 -25.275356292725 0 0 0
*createnode -10.313008308411 9.6300813357035 -25.275356292725 0 0 0
*createnode -10.313008308411 17.963414669037 -25.275356292725 0 0 0
*createnode -1.9796749750773 1.2967480023702 14.724643707275 0 0 0
*createnode -1.9796749750773 1.2967480023702 4.7246437072754 0 0 0
*createnode -10.313008308411 1.2967480023702 4.7246437072754 0 0 0
*createnode -10.313008308411 1.2967480023702 14.724643707275 0 0 0
*createnode -1.9796749750773 9.6300813357035 14.724643707275 0 0 0
*createnode -1.9796749750773 9.6300813357035 4.7246437072754 0 0 0
*createnode -10.313008308411 9.6300813357035 4.7246437072754 0 0 0
*createnode -10.313008308411 9.6300813357035 14.724643707275 0 0 0
*createnode -1.9796749750773 17.963414669037 14.724643707275 0 0 0
*createnode -1.9796749750773 17.963414669037 4.7246437072754 0 0 0
*createnode -10.313008308411 17.963414669037 4.7246437072754 0 0 0
*createnode -10.313008308411 17.963414669037 14.724643707275 0 0 0
*createnode -10.313008308411 1.2967480023702 -35.275356292725 0 0 0
*createnode -10.313008308411 9.6300813357035 -35.275356292725 0 0 0
*createnode -10.313008308411 17.963414669037 -35.275356292725 0 0 0
*createnode -1.9796749750773 1.2967480023702 24.724643707275 0 0 0
*createnode -1.9796749750773 9.6300813357035 24.724643707275 0 0 0
*createnode -1.9796749750773 17.963414669037 24.724643707275 0 0 0
*createnode 6.353658358256 1.2967480023702 -5.2753562927246 0 0 0
*createnode 14.686991691589 1.2967480023702 -5.2753562927246 0 0 0
*createnode 14.686991691589 1.2967480023702 -15.275356292725 0 0 0
*createnode 6.353658358256 9.6300813357035 -5.2753562927246 0 0 0
*createnode 14.686991691589 9.6300813357035 -5.2753562927246 0 0 0
*createnode 14.686991691589 9.6300813357035 -15.275356292725 0 0 0
*createnode 6.353658358256 17.963414669037 -5.2753562927246 0 0 0
*createnode 14.686991691589 17.963414669037 -5.2753562927246 0 0 0
*createnode 14.686991691589 17.963414669037 -15.275356292725 0 0 0
*createnode 14.686991691589 1.2967480023702 14.724643707275 0 0 0
*createnode 6.353658358256 1.2967480023702 14.724643707275 0 0 0
*createnode 14.686991691589 9.6300813357035 14.724643707275 0 0 0
*createnode 6.353658358256 9.6300813357035 14.724643707275 0 0 0
*createnode 14.686991691589 17.963414669037 14.724643707275 0 0 0
*createnode 6.353658358256 17.963414669037 14.724643707275 0 0 0
*createnode 14.686991691589 1.2967480023702 4.7246437072754 0 0 0
*createnode 6.353658358256 1.2967480023702 4.7246437072754 0 0 0
*createnode 14.686991691589 9.6300813357035 4.7246437072754 0 0 0
*createnode 6.353658358256 9.6300813357035 4.7246437072754 0 0 0
*createnode 14.686991691589 17.963414669037 4.7246437072754 0 0 0
*createnode 6.353658358256 17.963414669037 4.7246437072754 0 0 0
*createnode 14.686991691589 1.2967480023702 -25.275356292725 0 0 0
*createnode 14.686991691589 9.6300813357035 -25.275356292725 0 0 0
*createnode 14.686991691589 17.963414669037 -25.275356292725 0 0 0
*createnode 6.353658358256 1.2967480023702 54.724643707275 0 0 0
*createnode 6.353658358256 9.6300813357035 54.724643707275 0 0 0
*createnode 6.353658358256 17.963414669037 54.724643707275 0 0 0
*createnode -10.313008308411 1.2967480023702 -45.275356292725 0 0 0
*createnode -10.313008308411 9.6300813357035 -45.275356292725 0 0 0
*createnode -10.313008308411 17.963414669037 -45.275356292725 0 0 0
*createnode -10.313008308411 1.2967480023702 24.724643707275 0 0 0
*createnode -10.313008308411 1.2967480023702 34.724643707275 0 0 0
*createnode -10.313008308411 9.6300813357035 24.724643707275 0 0 0
*createnode -10.313008308411 9.6300813357035 34.724643707275 0 0 0
*createnode -10.313008308411 17.963414669037 24.724643707275 0 0 0
*createnode -10.313008308411 17.963414669037 34.724643707275 0 0 0
*createnode 14.686991691589 1.2967480023702 54.724643707275 0 0 0
*createnode 14.686991691589 9.6300813357035 54.724643707275 0 0 0
*createnode 14.686991691589 17.963414669037 54.724643707275 0 0 0
*setoption topofacecolor=4
*elementtype 61 1
*rod 25 28 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 23 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 23 24 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 24 28 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 45 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 47 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 47 48 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 48 45 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 25 45 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 23 47 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 24 48 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 25 23 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 45 47 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 48 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 25 48 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 24 45 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 47 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 23 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 25 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 45 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 24 47 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 23 48 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 49 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 51 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 51 52 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 52 49 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 45 49 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 47 51 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 48 52 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 49 51 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 52 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 45 52 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 48 49 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 51 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 47 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 45 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 49 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 48 51 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 47 52 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 53 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 54 55 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 55 56 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 56 53 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 49 53 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 51 55 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 52 56 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 53 55 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 54 56 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 49 56 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 52 53 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 55 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 51 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 49 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 53 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 52 55 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 51 56 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 26 27 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 27 28 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 25 27 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 57 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 45 57 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 26 57 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 27 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 26 28 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 57 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 45 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 26 45 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 25 57 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 27 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 26 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 27 57 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 59 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 49 59 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 57 59 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 59 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 49 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 57 49 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 45 59 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 57 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 59 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 61 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 62 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 53 61 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 59 61 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 61 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 62 53 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 59 53 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 49 61 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 59 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 61 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 42 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 42 16 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 16 17 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 17 42 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 65 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 65 66 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 66 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 42 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 16 65 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 17 66 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 16 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 65 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 66 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 66 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 17 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 42 65 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 16 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 42 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 17 65 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 16 66 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 69 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 69 70 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 70 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 65 69 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 66 70 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 69 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 70 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 70 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 66 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 69 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 65 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 66 69 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 65 70 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 71 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 72 73 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 73 74 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 74 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 69 73 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 70 74 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 71 73 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 72 74 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 74 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 70 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 73 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 69 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 70 73 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 69 74 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 42 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 42 41 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 41 43 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 43 42 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 76 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 41 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 43 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 41 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 43 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 42 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 41 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 42 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 43 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 41 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 79 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 76 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 76 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 64 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 76 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 81 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 72 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 82 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 83 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 79 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 81 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 72 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 79 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 68 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 79 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 15 16 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 16 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 84 65 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 84 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 15 84 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 15 42 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 84 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 65 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 15 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 84 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 15 65 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 16 84 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 85 69 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 85 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 84 85 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 85 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 69 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 84 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 85 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 84 69 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 65 85 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 86 73 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 81 86 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 85 86 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 86 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 73 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 85 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 86 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 85 73 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 69 86 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 30 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 30 29 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 29 31 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 30 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 89 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 30 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 29 89 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 29 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 89 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 30 89 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 29 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 30 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 89 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 29 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 93 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 93 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 93 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 93 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 93 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 95 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 96 97 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 97 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 98 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 97 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 95 97 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 96 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 97 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 97 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 4 5 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 5 33 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 31 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 5 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 99 100 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 100 101 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 99 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 4 99 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 5 100 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 101 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 4 33 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 99 101 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 100 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 4 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 99 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 5 101 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 100 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 4 100 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 5 99 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 101 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 90 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 102 103 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 103 104 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 102 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 99 102 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 100 103 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 104 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 102 104 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 103 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 99 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 102 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 100 104 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 103 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 99 103 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 100 102 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 104 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 94 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 105 106 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 106 107 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 107 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 98 105 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 102 105 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 103 106 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 107 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 105 107 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 106 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 102 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 105 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 103 107 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 106 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 102 106 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 103 105 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 107 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 98 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 12 43 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 43 10 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 10 11 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 11 43 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 108 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 109 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 109 110 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 110 108 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 12 108 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 10 109 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 11 110 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 12 10 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 108 109 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 110 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 12 110 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 11 108 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 43 109 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 10 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 12 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 43 108 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 11 109 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 10 110 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 111 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 112 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 112 113 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 113 111 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 108 111 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 109 112 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 110 113 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 111 112 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 113 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 108 113 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 110 111 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 112 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 109 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 108 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 111 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 110 112 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 109 113 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 114 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 83 115 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 115 116 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 116 114 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 111 114 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 112 115 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 113 116 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 114 115 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 83 116 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 111 116 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 113 114 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 115 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 112 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 111 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 114 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 113 115 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 112 116 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 29 3 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 3 4 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 4 29 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 117 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 117 99 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 3 117 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 3 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 117 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 99 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 29 117 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 3 89 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 4 117 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 3 99 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 118 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 118 102 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 117 118 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 118 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 102 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 118 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 117 93 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 99 118 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 117 102 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 97 119 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 119 105 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 118 119 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 98 119 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 97 105 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 119 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 118 97 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 102 119 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 118 105 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 35 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 35 6 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 6 7 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 7 35 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 121 122 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 122 123 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 123 120 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 120 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 35 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 6 122 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 7 123 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 6 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 122 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 121 123 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 123 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 7 120 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 35 122 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 6 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 35 120 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 7 122 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 6 123 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 125 126 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 126 127 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 127 124 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 124 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 121 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 122 126 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 123 127 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 126 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 125 127 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 127 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 123 124 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 121 126 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 122 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 121 124 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 123 126 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 122 127 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 128 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 129 130 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 130 131 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 131 128 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 128 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 125 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 126 130 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 127 131 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 128 130 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 129 131 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 131 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 127 128 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 125 130 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 126 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 125 128 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 127 130 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 126 131 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 2 3 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 29 27 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 27 3 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 132 117 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 132 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 2 132 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 2 29 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 132 89 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 117 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 2 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 27 132 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 2 117 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 3 132 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 27 89 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 29 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 133 118 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 133 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 132 133 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 133 93 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 118 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 132 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 133 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 132 118 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 117 133 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 93 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 134 119 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 97 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 62 134 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 133 134 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 134 97 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 119 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 133 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 134 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 133 119 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 118 134 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 97 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 41 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 41 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 42 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 64 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 76 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 41 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 68 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 79 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 76 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 137 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 71 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 137 72 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 82 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 79 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 34 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 20 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 20 21 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 21 34 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 139 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 139 140 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 140 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 20 139 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 21 140 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 20 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 139 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 140 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 140 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 21 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 139 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 20 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 21 139 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 20 140 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 142 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 142 143 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 143 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 139 142 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 140 143 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 142 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 143 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 143 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 140 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 142 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 139 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 87 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 140 142 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 139 143 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 95 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 144 145 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 145 146 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 146 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 142 145 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 143 146 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 95 145 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 144 146 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 146 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 143 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 145 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 142 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 91 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 143 145 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 142 146 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 17 18 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 18 38 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 40 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 18 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 66 147 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 147 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 148 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 18 147 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 17 38 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 66 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 147 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 18 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 147 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 17 147 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 18 66 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 63 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 70 149 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 149 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 150 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 147 149 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 148 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 70 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 149 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 147 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 148 149 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 66 149 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 147 70 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 148 67 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 74 151 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 151 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 152 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 149 151 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 150 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 74 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 151 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 149 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 150 151 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 70 151 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 149 74 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 150 71 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 18 19 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 19 36 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 36 38 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 19 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 147 153 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 153 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 19 153 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 36 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 18 36 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 147 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 153 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 19 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 36 153 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 18 153 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 19 147 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 36 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 149 155 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 155 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 153 155 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 149 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 155 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 153 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 155 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 147 155 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 153 149 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 148 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 151 157 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 157 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 158 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 155 157 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 151 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 157 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 155 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 157 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 149 157 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 155 151 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 150 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 34 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 33 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 31 34 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 90 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 101 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 94 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 104 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 107 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 98 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 107 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 107 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 36 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 19 20 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 20 36 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 153 139 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 19 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 153 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 139 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 36 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 20 153 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 19 139 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 155 142 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 155 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 142 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 138 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 139 155 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 153 142 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 144 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 157 145 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 144 157 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 158 145 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 141 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 142 157 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 155 145 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 36 35 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 36 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 35 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 148 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 120 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 120 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 148 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 36 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 35 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 150 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 124 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 148 124 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 150 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 154 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 121 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 158 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 128 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 152 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 158 128 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 150 128 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 152 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 156 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 125 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 35 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 34 35 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 36 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 154 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 121 138 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 35 101 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 156 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 125 141 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 101 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 121 104 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 107 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 107 158 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 129 144 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 104 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 125 107 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 30 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 30 22 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 22 23 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 23 30 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 159 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 159 47 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 22 159 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 22 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 159 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 47 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 30 159 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 22 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 30 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 23 159 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 22 47 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 160 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 160 51 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 159 160 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 160 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 51 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 160 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 159 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 46 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 88 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 47 160 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 159 51 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 54 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 96 161 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 161 55 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 160 161 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 54 161 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 96 55 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 161 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 160 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 50 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 92 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 51 161 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 160 55 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 13 44 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 43 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 12 44 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 162 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 108 162 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 13 162 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 13 43 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 162 77 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 108 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 13 108 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 12 162 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 13 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 44 162 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 163 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 111 163 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 162 163 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 163 80 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 111 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 162 111 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 108 163 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 162 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 75 163 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 164 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 114 164 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 163 164 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 164 83 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 81 114 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 163 114 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 111 164 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 163 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 78 164 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 38 37 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 39 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 38 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 40 37 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 63 120 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 148 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 120 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 67 124 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 150 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 124 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 128 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 71 128 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 152 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 128 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 1 2 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 2 27 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 26 2 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 165 132 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 57 165 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 1 165 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 1 27 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 165 58 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 132 57 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 1 57 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 26 165 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 1 132 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 2 165 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 166 133 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 59 166 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 165 166 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 166 60 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 133 59 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 165 59 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 57 166 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 165 133 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 132 166 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 167 134 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 61 167 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 166 167 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 167 62 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 134 61 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 166 61 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 59 167 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 166 134 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 133 167 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 8 9 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 9 41 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 9 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 168 169 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 169 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 168 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 8 168 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 9 169 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 8 41 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 168 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 169 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 8 135 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 168 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 9 76 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 41 169 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 8 169 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 9 168 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 170 171 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 171 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 170 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 168 170 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 169 171 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 170 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 171 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 168 136 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 170 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 169 79 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 76 171 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 168 171 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 169 170 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 172 173 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 173 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 137 172 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 170 172 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 171 173 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 172 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 173 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 170 137 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 172 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 171 82 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 79 173 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 170 173 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 171 172 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 14 15 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 15 44 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 13 15 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 174 84 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 162 174 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 14 174 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 14 44 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 174 75 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 84 162 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 14 162 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 13 174 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 14 84 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 15 174 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 175 85 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 163 175 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 174 175 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 175 78 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 85 163 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 174 163 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 162 175 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 174 85 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 84 175 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 176 86 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 164 176 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 175 176 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 176 81 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 86 164 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 175 164 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 163 176 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 175 86 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 85 176 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 37 7 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 7 8 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 8 37 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 123 168 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 39 7 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 135 123 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 120 168 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 8 123 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 7 168 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 127 170 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 136 127 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 124 170 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 168 127 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 123 170 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 131 172 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 137 131 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 128 172 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 170 131 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 127 172 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 28 29 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 27 30 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 58 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 89 46 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 60 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 93 50 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 62 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 97 54 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 9 10 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 10 41 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 169 109 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 43 9 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 77 169 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 76 109 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 10 169 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 9 109 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 171 112 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 80 171 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 79 112 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 109 171 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 169 112 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 173 115 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 83 173 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 82 115 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 112 173 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 171 115 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 5 6 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 33 6 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 100 122 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 5 35 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 100 121 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 122 101 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 5 122 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 6 100 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 103 126 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 103 125 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 126 104 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 100 126 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 122 103 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 106 130 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 106 129 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 130 107 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 103 130 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 126 106 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 21 22 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 32 22 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 140 159 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 21 30 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 140 88 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 159 87 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 21 159 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 22 140 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 143 160 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 143 92 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 160 91 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 140 160 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 159 143 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 146 161 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 146 96 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 161 95 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 143 161 "property_1"
*setoption topofacecolor=4
*elementtype 61 1
*rod 160 146 "property_1"
