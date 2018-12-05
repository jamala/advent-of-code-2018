//: [Previous](@previous)

import CoreGraphics

let input = """
#1 @ 871,327: 16x20
#2 @ 676,717: 27x26
#3 @ 245,818: 19x21
#4 @ 89,306: 22x11
#5 @ 451,712: 20x11
#6 @ 322,299: 24x29
#7 @ 161,304: 10x29
#8 @ 746,459: 19x25
#9 @ 720,21: 19x29
#10 @ 803,435: 22x20
#11 @ 437,394: 13x29
#12 @ 654,445: 22x25
#13 @ 723,721: 3x10
#14 @ 643,575: 13x28
#15 @ 706,265: 16x18
#16 @ 670,661: 21x21
#17 @ 168,664: 26x15
#18 @ 4,461: 19x29
#19 @ 771,73: 20x29
#20 @ 730,864: 24x12
#21 @ 373,371: 19x27
#22 @ 666,803: 23x17
#23 @ 944,277: 28x12
#24 @ 579,563: 25x13
#25 @ 318,469: 26x16
#26 @ 711,739: 29x19
#27 @ 80,902: 22x13
#28 @ 799,133: 11x25
#29 @ 783,235: 28x15
#30 @ 976,309: 14x23
#31 @ 154,301: 19x28
#32 @ 287,729: 15x26
#33 @ 145,39: 18x29
#34 @ 23,699: 21x18
#35 @ 320,199: 25x11
#36 @ 181,956: 18x27
#37 @ 969,84: 16x11
#38 @ 886,933: 23x16
#39 @ 155,76: 14x22
#40 @ 970,303: 17x14
#41 @ 929,942: 13x12
#42 @ 514,723: 28x11
#43 @ 97,725: 27x10
#44 @ 434,511: 22x23
#45 @ 235,150: 14x17
#46 @ 287,946: 18x18
#47 @ 554,504: 20x13
#48 @ 462,925: 21x10
#49 @ 322,311: 26x17
#50 @ 916,849: 17x13
#51 @ 14,740: 18x13
#52 @ 563,754: 20x18
#53 @ 832,184: 19x14
#54 @ 605,771: 20x25
#55 @ 945,191: 16x29
#56 @ 767,306: 23x11
#57 @ 308,299: 18x20
#58 @ 608,791: 10x27
#59 @ 962,408: 19x28
#60 @ 400,619: 21x12
#61 @ 648,908: 29x29
#62 @ 728,583: 22x19
#63 @ 838,488: 10x10
#64 @ 292,879: 25x20
#65 @ 372,155: 22x11
#66 @ 978,60: 16x25
#67 @ 329,578: 29x15
#68 @ 590,207: 19x26
#69 @ 694,268: 13x21
#70 @ 552,924: 19x18
#71 @ 525,96: 24x26
#72 @ 912,786: 10x25
#73 @ 177,43: 13x12
#74 @ 575,731: 27x19
#75 @ 470,713: 24x25
#76 @ 742,318: 18x26
#77 @ 509,560: 19x11
#78 @ 641,596: 28x25
#79 @ 862,935: 14x16
#80 @ 639,37: 16x24
#81 @ 162,900: 14x23
#82 @ 512,99: 25x17
#83 @ 572,413: 25x27
#84 @ 890,910: 26x29
#85 @ 869,418: 22x11
#86 @ 519,691: 29x28
#87 @ 138,646: 29x29
#88 @ 407,18: 29x17
#89 @ 185,755: 18x23
#90 @ 382,156: 16x13
#91 @ 140,469: 26x16
#92 @ 718,13: 27x12
#93 @ 711,785: 11x14
#94 @ 730,792: 25x13
#95 @ 0,40: 22x15
#96 @ 264,228: 20x24
#97 @ 861,256: 12x13
#98 @ 175,169: 20x15
#99 @ 725,583: 26x13
#100 @ 389,688: 26x18
#101 @ 593,790: 11x15
#102 @ 171,458: 28x21
#103 @ 531,355: 23x28
#104 @ 87,260: 20x15
#105 @ 79,114: 23x21
#106 @ 58,729: 12x13
#107 @ 242,599: 27x10
#108 @ 537,454: 13x25
#109 @ 201,508: 24x21
#110 @ 243,577: 16x19
#111 @ 402,606: 14x26
#112 @ 796,874: 29x11
#113 @ 726,388: 24x15
#114 @ 721,590: 18x24
#115 @ 243,147: 18x28
#116 @ 347,23: 21x21
#117 @ 666,432: 22x12
#118 @ 363,782: 24x21
#119 @ 577,763: 21x20
#120 @ 264,117: 16x23
#121 @ 23,547: 12x27
#122 @ 199,836: 20x22
#123 @ 892,901: 11x19
#124 @ 747,429: 20x23
#125 @ 204,605: 25x16
#126 @ 172,803: 15x11
#127 @ 195,784: 21x13
#128 @ 204,819: 24x25
#129 @ 619,582: 4x16
#130 @ 885,672: 12x18
#131 @ 186,761: 20x17
#132 @ 259,820: 26x20
#133 @ 226,21: 18x29
#134 @ 973,244: 24x22
#135 @ 884,704: 29x12
#136 @ 224,559: 25x24
#137 @ 599,566: 28x10
#138 @ 600,62: 20x23
#139 @ 34,526: 14x17
#140 @ 569,18: 15x20
#141 @ 70,212: 26x20
#142 @ 574,122: 27x22
#143 @ 789,610: 20x24
#144 @ 934,649: 25x14
#145 @ 862,658: 18x13
#146 @ 660,573: 3x5
#147 @ 793,801: 24x23
#148 @ 848,108: 14x22
#149 @ 278,124: 12x24
#150 @ 276,936: 19x10
#151 @ 946,399: 12x25
#152 @ 968,954: 29x17
#153 @ 188,832: 18x15
#154 @ 866,684: 27x21
#155 @ 297,332: 19x10
#156 @ 581,788: 15x17
#157 @ 744,168: 23x18
#158 @ 279,353: 29x16
#159 @ 388,327: 15x12
#160 @ 100,419: 13x15
#161 @ 114,825: 29x13
#162 @ 558,228: 22x10
#163 @ 350,917: 17x20
#164 @ 624,956: 29x12
#165 @ 702,752: 20x16
#166 @ 908,54: 16x25
#167 @ 110,905: 20x22
#168 @ 46,603: 23x18
#169 @ 396,211: 13x27
#170 @ 188,47: 25x25
#171 @ 411,958: 10x13
#172 @ 705,12: 16x23
#173 @ 876,778: 12x16
#174 @ 784,818: 11x23
#175 @ 298,266: 17x10
#176 @ 958,195: 16x23
#177 @ 411,779: 17x23
#178 @ 442,307: 5x15
#179 @ 320,514: 29x17
#180 @ 330,320: 21x16
#181 @ 702,11: 22x23
#182 @ 363,285: 26x21
#183 @ 357,148: 26x18
#184 @ 640,578: 13x28
#185 @ 769,511: 21x11
#186 @ 958,180: 15x28
#187 @ 401,309: 13x19
#188 @ 163,771: 25x25
#189 @ 537,364: 23x13
#190 @ 747,456: 23x10
#191 @ 907,462: 12x16
#192 @ 200,239: 19x27
#193 @ 324,86: 12x19
#194 @ 644,181: 15x17
#195 @ 917,910: 10x25
#196 @ 61,710: 17x29
#197 @ 552,276: 16x21
#198 @ 714,559: 23x22
#199 @ 360,797: 26x13
#200 @ 790,96: 13x23
#201 @ 231,395: 28x24
#202 @ 974,249: 10x16
#203 @ 162,828: 15x29
#204 @ 410,668: 29x26
#205 @ 13,565: 19x26
#206 @ 761,908: 20x20
#207 @ 10,667: 15x21
#208 @ 956,735: 22x27
#209 @ 49,964: 28x28
#210 @ 957,46: 24x20
#211 @ 757,739: 11x21
#212 @ 429,584: 13x20
#213 @ 882,968: 17x22
#214 @ 22,307: 22x19
#215 @ 113,251: 13x24
#216 @ 335,3: 10x27
#217 @ 778,964: 13x20
#218 @ 886,205: 19x29
#219 @ 312,844: 10x29
#220 @ 173,801: 10x20
#221 @ 192,784: 17x13
#222 @ 818,393: 18x12
#223 @ 638,331: 23x19
#224 @ 723,970: 14x29
#225 @ 908,911: 19x19
#226 @ 870,372: 11x15
#227 @ 659,860: 5x17
#228 @ 572,112: 25x21
#229 @ 911,686: 18x16
#230 @ 356,730: 14x11
#231 @ 682,122: 28x22
#232 @ 202,314: 13x29
#233 @ 38,345: 10x11
#234 @ 530,954: 28x29
#235 @ 865,933: 28x28
#236 @ 79,389: 16x15
#237 @ 576,734: 17x11
#238 @ 497,394: 17x14
#239 @ 196,595: 16x18
#240 @ 470,669: 12x18
#241 @ 303,641: 29x15
#242 @ 157,546: 27x27
#243 @ 484,663: 20x23
#244 @ 348,242: 20x21
#245 @ 214,38: 23x23
#246 @ 761,280: 13x17
#247 @ 508,185: 12x16
#248 @ 35,682: 18x23
#249 @ 783,489: 19x27
#250 @ 44,117: 13x10
#251 @ 161,888: 17x28
#252 @ 64,726: 12x12
#253 @ 645,600: 24x15
#254 @ 380,481: 24x23
#255 @ 714,577: 15x24
#256 @ 966,107: 28x20
#257 @ 687,650: 13x12
#258 @ 253,179: 25x18
#259 @ 53,712: 29x17
#260 @ 133,545: 20x29
#261 @ 591,788: 18x27
#262 @ 534,531: 10x24
#263 @ 298,562: 27x13
#264 @ 920,933: 25x10
#265 @ 201,231: 13x21
#266 @ 108,467: 23x18
#267 @ 185,387: 26x20
#268 @ 184,840: 20x15
#269 @ 419,579: 23x15
#270 @ 29,317: 25x26
#271 @ 251,52: 19x16
#272 @ 802,179: 29x18
#273 @ 806,942: 21x11
#274 @ 106,738: 25x20
#275 @ 585,436: 26x23
#276 @ 130,547: 18x11
#277 @ 730,154: 18x24
#278 @ 413,947: 10x20
#279 @ 264,750: 27x21
#280 @ 581,237: 3x9
#281 @ 725,300: 24x10
#282 @ 295,93: 23x24
#283 @ 610,761: 17x19
#284 @ 425,402: 14x14
#285 @ 415,817: 17x20
#286 @ 840,294: 12x17
#287 @ 51,811: 26x11
#288 @ 519,950: 12x25
#289 @ 123,771: 24x29
#290 @ 957,490: 11x17
#291 @ 73,787: 15x28
#292 @ 483,820: 11x18
#293 @ 634,665: 14x17
#294 @ 141,553: 16x17
#295 @ 512,685: 15x25
#296 @ 648,741: 27x20
#297 @ 942,537: 12x14
#298 @ 946,659: 26x13
#299 @ 239,537: 20x24
#300 @ 143,504: 13x20
#301 @ 348,954: 26x12
#302 @ 309,110: 23x11
#303 @ 896,578: 29x13
#304 @ 678,687: 20x26
#305 @ 598,720: 12x28
#306 @ 893,418: 10x28
#307 @ 651,378: 24x26
#308 @ 495,342: 24x10
#309 @ 455,80: 18x22
#310 @ 668,87: 15x26
#311 @ 24,60: 19x22
#312 @ 645,728: 15x12
#313 @ 80,681: 27x22
#314 @ 533,859: 11x23
#315 @ 66,836: 16x15
#316 @ 282,606: 23x28
#317 @ 521,655: 14x18
#318 @ 924,546: 14x26
#319 @ 739,770: 29x10
#320 @ 37,78: 23x10
#321 @ 715,122: 26x10
#322 @ 11,583: 15x19
#323 @ 596,92: 17x27
#324 @ 893,211: 28x12
#325 @ 485,395: 11x23
#326 @ 960,283: 26x18
#327 @ 290,446: 12x16
#328 @ 700,764: 18x10
#329 @ 41,328: 17x10
#330 @ 716,169: 13x11
#331 @ 357,806: 21x18
#332 @ 736,20: 12x19
#333 @ 903,918: 12x11
#334 @ 27,527: 20x21
#335 @ 876,129: 14x11
#336 @ 829,561: 28x15
#337 @ 189,133: 20x11
#338 @ 837,220: 23x14
#339 @ 108,371: 18x11
#340 @ 641,795: 28x14
#341 @ 335,281: 16x21
#342 @ 59,876: 29x10
#343 @ 101,890: 10x20
#344 @ 535,341: 28x18
#345 @ 161,764: 28x16
#346 @ 565,498: 10x26
#347 @ 949,105: 19x15
#348 @ 940,624: 13x26
#349 @ 406,5: 22x15
#350 @ 724,968: 24x27
#351 @ 584,269: 27x12
#352 @ 594,289: 25x24
#353 @ 818,727: 14x17
#354 @ 833,603: 27x13
#355 @ 565,489: 19x27
#356 @ 315,332: 23x14
#357 @ 842,308: 13x19
#358 @ 400,80: 17x20
#359 @ 438,95: 29x20
#360 @ 804,889: 9x3
#361 @ 900,289: 18x14
#362 @ 14,830: 16x29
#363 @ 301,484: 24x19
#364 @ 336,212: 14x21
#365 @ 310,659: 16x23
#366 @ 208,592: 22x12
#367 @ 768,911: 13x29
#368 @ 320,300: 15x28
#369 @ 541,264: 25x16
#370 @ 893,198: 29x16
#371 @ 359,479: 12x12
#372 @ 659,91: 12x21
#373 @ 961,43: 24x25
#374 @ 881,429: 26x18
#375 @ 705,718: 20x21
#376 @ 469,835: 5x5
#377 @ 928,291: 23x17
#378 @ 632,342: 29x24
#379 @ 312,599: 12x26
#380 @ 715,395: 15x12
#381 @ 582,572: 13x10
#382 @ 699,645: 16x13
#383 @ 788,892: 13x10
#384 @ 278,84: 12x19
#385 @ 278,403: 5x4
#386 @ 753,174: 28x21
#387 @ 127,27: 24x28
#388 @ 606,286: 14x26
#389 @ 903,939: 13x15
#390 @ 332,122: 12x11
#391 @ 880,199: 15x19
#392 @ 531,471: 28x26
#393 @ 948,10: 27x25
#394 @ 16,604: 24x22
#395 @ 562,360: 13x29
#396 @ 682,910: 28x20
#397 @ 100,491: 17x10
#398 @ 128,20: 20x14
#399 @ 303,681: 22x12
#400 @ 397,641: 22x25
#401 @ 794,865: 18x28
#402 @ 875,936: 12x17
#403 @ 391,570: 14x24
#404 @ 77,284: 27x24
#405 @ 310,450: 10x24
#406 @ 910,635: 16x29
#407 @ 504,711: 11x27
#408 @ 344,163: 16x19
#409 @ 313,756: 11x26
#410 @ 864,716: 15x20
#411 @ 689,215: 23x10
#412 @ 766,435: 24x28
#413 @ 701,221: 12x18
#414 @ 914,773: 15x26
#415 @ 913,310: 19x10
#416 @ 983,305: 17x20
#417 @ 304,571: 11x29
#418 @ 578,573: 11x29
#419 @ 196,424: 22x13
#420 @ 275,539: 16x20
#421 @ 906,311: 10x22
#422 @ 802,886: 15x10
#423 @ 749,724: 27x29
#424 @ 82,311: 24x10
#425 @ 416,835: 15x18
#426 @ 814,718: 27x26
#427 @ 676,936: 29x19
#428 @ 419,17: 14x27
#429 @ 732,449: 28x21
#430 @ 709,771: 16x26
#431 @ 729,216: 14x20
#432 @ 243,67: 15x15
#433 @ 881,813: 21x27
#434 @ 324,361: 25x15
#435 @ 980,785: 11x16
#436 @ 250,418: 22x24
#437 @ 174,181: 27x23
#438 @ 551,934: 17x23
#439 @ 976,707: 18x17
#440 @ 538,426: 22x17
#441 @ 238,533: 14x10
#442 @ 873,117: 27x11
#443 @ 437,98: 10x16
#444 @ 692,575: 29x28
#445 @ 333,1: 18x10
#446 @ 299,198: 13x23
#447 @ 444,531: 15x20
#448 @ 917,209: 15x29
#449 @ 450,930: 25x12
#450 @ 959,493: 5x10
#451 @ 832,370: 14x28
#452 @ 699,670: 13x19
#453 @ 287,629: 28x18
#454 @ 295,900: 17x10
#455 @ 596,783: 29x26
#456 @ 313,704: 16x14
#457 @ 80,584: 17x24
#458 @ 636,863: 26x18
#459 @ 530,16: 24x12
#460 @ 303,618: 27x28
#461 @ 79,870: 28x26
#462 @ 77,692: 16x25
#463 @ 54,492: 23x22
#464 @ 985,714: 11x15
#465 @ 476,807: 16x10
#466 @ 82,377: 13x11
#467 @ 517,570: 15x16
#468 @ 386,580: 26x26
#469 @ 649,358: 22x18
#470 @ 780,113: 11x26
#471 @ 628,186: 22x21
#472 @ 229,805: 12x12
#473 @ 593,162: 16x14
#474 @ 875,969: 24x28
#475 @ 335,791: 18x28
#476 @ 389,648: 15x14
#477 @ 858,787: 11x14
#478 @ 392,47: 17x18
#479 @ 559,233: 14x20
#480 @ 890,441: 18x18
#481 @ 962,559: 22x20
#482 @ 31,690: 10x21
#483 @ 715,34: 24x16
#484 @ 12,117: 28x17
#485 @ 632,541: 15x10
#486 @ 700,898: 23x25
#487 @ 166,580: 18x17
#488 @ 25,922: 11x21
#489 @ 575,120: 16x11
#490 @ 434,746: 28x20
#491 @ 717,770: 11x29
#492 @ 576,681: 28x23
#493 @ 511,697: 14x16
#494 @ 216,536: 15x25
#495 @ 878,790: 18x18
#496 @ 834,22: 25x26
#497 @ 682,407: 12x12
#498 @ 415,124: 17x27
#499 @ 420,656: 12x18
#500 @ 381,616: 10x26
#501 @ 311,317: 23x23
#502 @ 958,546: 15x22
#503 @ 795,849: 16x20
#504 @ 259,65: 20x19
#505 @ 219,268: 24x20
#506 @ 710,595: 24x16
#507 @ 795,178: 19x18
#508 @ 561,805: 29x25
#509 @ 921,947: 24x26
#510 @ 158,577: 20x13
#511 @ 647,451: 28x14
#512 @ 856,59: 18x19
#513 @ 670,729: 22x15
#514 @ 208,114: 21x19
#515 @ 183,864: 18x11
#516 @ 131,735: 10x23
#517 @ 733,771: 10x11
#518 @ 684,627: 14x21
#519 @ 660,418: 16x17
#520 @ 865,27: 23x21
#521 @ 854,726: 20x17
#522 @ 532,778: 26x12
#523 @ 406,147: 12x20
#524 @ 294,898: 17x18
#525 @ 122,373: 15x16
#526 @ 698,265: 19x13
#527 @ 677,411: 25x18
#528 @ 156,779: 20x22
#529 @ 452,448: 15x17
#530 @ 476,751: 21x15
#531 @ 576,486: 16x17
#532 @ 833,616: 25x20
#533 @ 336,24: 16x23
#534 @ 146,778: 15x10
#535 @ 591,785: 26x17
#536 @ 824,181: 20x26
#537 @ 587,785: 12x19
#538 @ 847,247: 27x25
#539 @ 687,801: 10x26
#540 @ 915,155: 29x14
#541 @ 514,320: 11x24
#542 @ 930,668: 26x24
#543 @ 385,610: 11x25
#544 @ 527,570: 16x22
#545 @ 870,61: 22x13
#546 @ 866,18: 28x10
#547 @ 326,763: 15x29
#548 @ 384,929: 26x23
#549 @ 85,458: 23x26
#550 @ 229,936: 13x18
#551 @ 75,806: 25x21
#552 @ 819,504: 11x4
#553 @ 179,968: 17x24
#554 @ 915,262: 20x28
#555 @ 461,809: 24x16
#556 @ 488,321: 13x16
#557 @ 34,704: 18x11
#558 @ 229,320: 13x28
#559 @ 540,479: 17x22
#560 @ 282,515: 29x21
#561 @ 351,670: 13x17
#562 @ 452,726: 24x24
#563 @ 376,661: 13x13
#564 @ 710,313: 13x14
#565 @ 16,459: 20x22
#566 @ 551,322: 21x24
#567 @ 597,467: 16x10
#568 @ 229,802: 17x14
#569 @ 120,713: 21x27
#570 @ 15,148: 29x22
#571 @ 463,699: 10x16
#572 @ 295,442: 15x11
#573 @ 230,276: 12x12
#574 @ 60,748: 22x14
#575 @ 222,515: 29x22
#576 @ 420,584: 22x14
#577 @ 33,520: 11x28
#578 @ 105,453: 14x28
#579 @ 766,930: 11x18
#580 @ 306,680: 25x14
#581 @ 39,311: 25x17
#582 @ 7,674: 23x24
#583 @ 721,718: 10x18
#584 @ 486,722: 19x24
#585 @ 69,705: 28x18
#586 @ 371,165: 21x26
#587 @ 741,154: 29x22
#588 @ 84,673: 27x16
#589 @ 5,830: 24x26
#590 @ 44,946: 12x24
#591 @ 269,166: 23x15
#592 @ 576,56: 27x21
#593 @ 26,922: 26x21
#594 @ 87,677: 17x19
#595 @ 682,801: 17x11
#596 @ 379,561: 14x27
#597 @ 588,868: 29x19
#598 @ 239,260: 10x20
#599 @ 460,830: 18x15
#600 @ 619,458: 25x21
#601 @ 308,438: 26x28
#602 @ 683,95: 14x12
#603 @ 309,749: 12x10
#604 @ 57,464: 14x11
#605 @ 70,487: 13x18
#606 @ 187,487: 14x10
#607 @ 18,598: 11x19
#608 @ 966,746: 20x16
#609 @ 94,879: 11x20
#610 @ 699,122: 26x29
#611 @ 863,800: 18x21
#612 @ 55,601: 19x10
#613 @ 628,544: 13x25
#614 @ 357,390: 28x27
#615 @ 589,170: 13x12
#616 @ 94,530: 27x21
#617 @ 710,370: 11x13
#618 @ 617,580: 11x24
#619 @ 873,983: 17x15
#620 @ 383,634: 21x29
#621 @ 825,660: 21x27
#622 @ 347,375: 15x21
#623 @ 455,449: 18x25
#624 @ 724,354: 24x20
#625 @ 680,198: 21x29
#626 @ 572,387: 18x16
#627 @ 119,90: 20x13
#628 @ 546,31: 15x23
#629 @ 128,371: 20x26
#630 @ 268,137: 16x16
#631 @ 453,708: 21x16
#632 @ 209,167: 18x27
#633 @ 191,77: 20x28
#634 @ 812,452: 10x26
#635 @ 178,826: 21x19
#636 @ 257,919: 20x28
#637 @ 91,888: 26x20
#638 @ 8,343: 15x22
#639 @ 565,285: 21x22
#640 @ 554,192: 11x15
#641 @ 920,851: 12x18
#642 @ 956,406: 22x16
#643 @ 579,446: 24x14
#644 @ 210,231: 17x10
#645 @ 89,269: 11x28
#646 @ 935,391: 18x17
#647 @ 663,125: 12x29
#648 @ 870,317: 10x16
#649 @ 761,706: 25x15
#650 @ 294,601: 29x12
#651 @ 603,215: 13x16
#652 @ 271,519: 15x26
#653 @ 253,557: 28x13
#654 @ 845,536: 28x18
#655 @ 172,873: 13x10
#656 @ 393,414: 24x27
#657 @ 71,432: 14x11
#658 @ 45,326: 29x23
#659 @ 60,639: 17x15
#660 @ 426,458: 28x25
#661 @ 825,370: 20x14
#662 @ 32,105: 23x28
#663 @ 611,884: 22x27
#664 @ 122,251: 26x16
#665 @ 223,273: 27x17
#666 @ 157,778: 15x13
#667 @ 189,909: 13x17
#668 @ 872,888: 28x22
#669 @ 776,503: 16x20
#670 @ 238,158: 17x28
#671 @ 662,788: 29x20
#672 @ 65,835: 21x28
#673 @ 274,222: 12x23
#674 @ 586,558: 26x12
#675 @ 523,681: 14x10
#676 @ 842,566: 17x23
#677 @ 545,37: 12x13
#678 @ 798,824: 18x29
#679 @ 886,194: 26x12
#680 @ 745,370: 7x4
#681 @ 192,229: 10x13
#682 @ 772,962: 13x27
#683 @ 665,635: 22x19
#684 @ 920,191: 18x29
#685 @ 391,391: 14x17
#686 @ 201,915: 15x21
#687 @ 102,426: 8x4
#688 @ 149,207: 10x13
#689 @ 90,661: 10x16
#690 @ 353,74: 23x28
#691 @ 756,754: 11x25
#692 @ 573,322: 22x10
#693 @ 544,264: 28x27
#694 @ 296,5: 27x14
#695 @ 98,757: 15x16
#696 @ 422,646: 24x23
#697 @ 602,444: 21x16
#698 @ 284,536: 21x15
#699 @ 575,977: 18x22
#700 @ 850,58: 13x14
#701 @ 901,793: 15x28
#702 @ 805,151: 13x24
#703 @ 178,312: 24x29
#704 @ 395,51: 13x27
#705 @ 765,444: 10x28
#706 @ 48,945: 10x29
#707 @ 954,625: 26x14
#708 @ 716,730: 23x12
#709 @ 830,396: 14x28
#710 @ 669,425: 10x15
#711 @ 354,834: 20x14
#712 @ 311,322: 23x13
#713 @ 235,945: 17x26
#714 @ 401,236: 29x29
#715 @ 672,647: 24x11
#716 @ 558,982: 19x13
#717 @ 656,457: 11x4
#718 @ 222,873: 24x17
#719 @ 159,536: 17x10
#720 @ 184,104: 21x17
#721 @ 941,536: 14x13
#722 @ 137,54: 25x13
#723 @ 832,379: 25x28
#724 @ 645,900: 24x23
#725 @ 748,189: 24x13
#726 @ 560,187: 21x11
#727 @ 328,709: 23x11
#728 @ 511,377: 20x24
#729 @ 686,404: 16x24
#730 @ 53,321: 20x28
#731 @ 585,434: 16x13
#732 @ 168,600: 11x25
#733 @ 329,331: 29x12
#734 @ 334,521: 11x15
#735 @ 234,646: 13x18
#736 @ 588,795: 16x22
#737 @ 176,198: 18x16
#738 @ 525,573: 13x12
#739 @ 225,43: 10x10
#740 @ 923,159: 15x17
#741 @ 314,6: 29x13
#742 @ 647,848: 21x18
#743 @ 898,963: 27x21
#744 @ 518,532: 21x11
#745 @ 15,155: 14x21
#746 @ 201,822: 14x13
#747 @ 714,297: 23x16
#748 @ 350,148: 15x13
#749 @ 880,127: 23x16
#750 @ 491,387: 28x22
#751 @ 180,34: 13x20
#752 @ 366,622: 24x14
#753 @ 526,2: 23x17
#754 @ 522,647: 10x21
#755 @ 518,581: 12x17
#756 @ 761,698: 28x25
#757 @ 524,619: 25x21
#758 @ 411,285: 18x27
#759 @ 642,919: 22x19
#760 @ 291,219: 19x22
#761 @ 677,962: 24x27
#762 @ 936,534: 24x21
#763 @ 450,660: 29x19
#764 @ 181,21: 19x23
#765 @ 278,561: 24x15
#766 @ 528,414: 11x18
#767 @ 278,839: 19x22
#768 @ 20,38: 20x14
#769 @ 321,526: 19x17
#770 @ 558,905: 18x28
#771 @ 456,931: 23x28
#772 @ 610,727: 18x21
#773 @ 688,936: 25x29
#774 @ 332,528: 20x29
#775 @ 963,291: 22x21
#776 @ 567,701: 14x17
#777 @ 802,677: 26x15
#778 @ 589,428: 21x14
#779 @ 665,412: 22x29
#780 @ 290,285: 25x29
#781 @ 868,342: 10x25
#782 @ 334,738: 23x24
#783 @ 582,480: 20x16
#784 @ 368,800: 24x15
#785 @ 797,400: 28x13
#786 @ 715,556: 14x18
#787 @ 86,480: 28x29
#788 @ 57,457: 28x26
#789 @ 141,736: 22x17
#790 @ 668,401: 12x29
#791 @ 528,400: 13x12
#792 @ 369,40: 20x24
#793 @ 734,759: 27x26
#794 @ 389,583: 19x12
#795 @ 885,99: 26x21
#796 @ 10,871: 24x23
#797 @ 657,604: 23x26
#798 @ 830,178: 14x20
#799 @ 442,466: 14x11
#800 @ 537,314: 24x21
#801 @ 110,684: 13x24
#802 @ 807,914: 29x20
#803 @ 415,331: 26x14
#804 @ 66,622: 10x25
#805 @ 967,783: 15x28
#806 @ 54,307: 27x12
#807 @ 329,232: 10x10
#808 @ 41,725: 21x18
#809 @ 449,713: 26x17
#810 @ 850,610: 18x11
#811 @ 707,284: 26x21
#812 @ 639,936: 15x19
#813 @ 746,34: 21x29
#814 @ 491,192: 24x22
#815 @ 152,641: 11x21
#816 @ 213,873: 23x17
#817 @ 228,877: 21x22
#818 @ 840,490: 5x5
#819 @ 138,718: 23x27
#820 @ 844,957: 22x20
#821 @ 651,913: 26x21
#822 @ 173,129: 18x22
#823 @ 213,423: 15x13
#824 @ 710,592: 14x23
#825 @ 78,466: 29x26
#826 @ 743,464: 17x27
#827 @ 260,557: 11x12
#828 @ 183,393: 19x25
#829 @ 710,643: 18x28
#830 @ 927,642: 24x10
#831 @ 5,864: 22x10
#832 @ 667,916: 26x23
#833 @ 674,697: 13x23
#834 @ 525,751: 22x19
#835 @ 621,527: 29x24
#836 @ 643,955: 16x28
#837 @ 910,895: 16x19
#838 @ 955,603: 26x29
#839 @ 831,931: 14x17
#840 @ 652,361: 18x26
#841 @ 633,798: 18x28
#842 @ 198,492: 12x20
#843 @ 74,433: 15x16
#844 @ 530,460: 15x23
#845 @ 389,682: 28x27
#846 @ 979,632: 16x22
#847 @ 249,569: 25x19
#848 @ 829,607: 14x10
#849 @ 20,685: 16x27
#850 @ 390,646: 10x10
#851 @ 590,829: 11x7
#852 @ 607,268: 12x11
#853 @ 108,256: 16x10
#854 @ 157,775: 22x21
#855 @ 696,269: 28x28
#856 @ 879,370: 29x13
#857 @ 135,92: 27x14
#858 @ 534,545: 11x24
#859 @ 190,854: 15x20
#860 @ 831,105: 13x19
#861 @ 538,346: 20x27
#862 @ 665,642: 21x13
#863 @ 552,890: 18x19
#864 @ 170,867: 10x10
#865 @ 656,858: 15x22
#866 @ 882,55: 19x24
#867 @ 338,390: 20x29
#868 @ 961,81: 13x10
#869 @ 917,453: 28x25
#870 @ 838,546: 13x16
#871 @ 723,164: 22x15
#872 @ 329,197: 13x26
#873 @ 72,105: 22x19
#874 @ 736,303: 22x22
#875 @ 638,842: 24x13
#876 @ 872,879: 15x25
#877 @ 479,758: 23x29
#878 @ 154,322: 27x25
#879 @ 664,116: 29x14
#880 @ 42,129: 13x20
#881 @ 53,869: 13x24
#882 @ 141,84: 27x15
#883 @ 499,665: 22x13
#884 @ 661,98: 28x19
#885 @ 510,488: 13x15
#886 @ 235,305: 19x27
#887 @ 588,272: 22x11
#888 @ 921,625: 23x26
#889 @ 17,354: 12x13
#890 @ 169,468: 26x12
#891 @ 718,209: 16x23
#892 @ 476,591: 14x14
#893 @ 165,737: 27x23
#894 @ 952,796: 14x28
#895 @ 340,751: 10x12
#896 @ 967,629: 15x10
#897 @ 279,364: 12x14
#898 @ 168,299: 12x18
#899 @ 722,708: 29x22
#900 @ 382,380: 28x21
#901 @ 351,812: 20x14
#902 @ 535,864: 6x8
#903 @ 466,833: 18x12
#904 @ 377,691: 18x10
#905 @ 343,369: 14x19
#906 @ 780,445: 12x13
#907 @ 272,401: 17x19
#908 @ 207,615: 18x17
#909 @ 742,353: 29x25
#910 @ 764,107: 18x29
#911 @ 335,586: 21x24
#912 @ 367,104: 17x19
#913 @ 864,936: 26x26
#914 @ 186,399: 18x16
#915 @ 629,872: 11x17
#916 @ 686,800: 14x22
#917 @ 576,251: 15x21
#918 @ 830,127: 27x14
#919 @ 340,931: 18x13
#920 @ 84,450: 22x11
#921 @ 948,54: 27x14
#922 @ 657,801: 10x12
#923 @ 284,837: 13x28
#924 @ 827,755: 22x14
#925 @ 749,769: 14x28
#926 @ 544,601: 16x22
#927 @ 451,632: 14x19
#928 @ 752,959: 21x12
#929 @ 146,63: 16x18
#930 @ 395,199: 11x26
#931 @ 97,451: 12x22
#932 @ 357,672: 16x25
#933 @ 389,158: 13x14
#934 @ 591,487: 25x18
#935 @ 964,523: 26x11
#936 @ 333,242: 24x19
#937 @ 743,285: 16x26
#938 @ 852,976: 12x19
#939 @ 835,1: 23x27
#940 @ 442,464: 17x11
#941 @ 474,579: 21x26
#942 @ 376,292: 20x22
#943 @ 748,912: 12x11
#944 @ 393,616: 13x20
#945 @ 889,445: 26x23
#946 @ 107,799: 25x22
#947 @ 278,883: 20x19
#948 @ 921,621: 28x21
#949 @ 740,779: 10x20
#950 @ 48,473: 14x25
#951 @ 335,902: 20x19
#952 @ 95,58: 22x17
#953 @ 758,122: 28x28
#954 @ 706,375: 18x24
#955 @ 898,76: 21x10
#956 @ 233,931: 17x26
#957 @ 728,10: 29x17
#958 @ 725,244: 24x29
#959 @ 861,227: 26x12
#960 @ 318,681: 20x21
#961 @ 889,119: 13x10
#962 @ 92,248: 24x19
#963 @ 925,164: 26x21
#964 @ 514,493: 11x22
#965 @ 505,877: 14x24
#966 @ 166,538: 28x15
#967 @ 354,922: 14x21
#968 @ 879,809: 12x15
#969 @ 84,550: 17x11
#970 @ 164,838: 8x12
#971 @ 90,843: 16x16
#972 @ 45,28: 4x13
#973 @ 448,770: 28x25
#974 @ 939,531: 17x21
#975 @ 724,156: 11x23
#976 @ 414,785: 10x15
#977 @ 93,880: 10x14
#978 @ 968,309: 25x24
#979 @ 22,115: 18x25
#980 @ 767,539: 22x27
#981 @ 360,98: 20x27
#982 @ 453,919: 16x26
#983 @ 924,157: 25x11
#984 @ 434,453: 19x17
#985 @ 829,195: 29x26
#986 @ 503,908: 12x18
#987 @ 579,235: 12x15
#988 @ 963,329: 19x25
#989 @ 716,120: 17x25
#990 @ 323,814: 16x23
#991 @ 524,476: 25x12
#992 @ 955,805: 10x25
#993 @ 178,201: 3x4
#994 @ 69,217: 16x17
#995 @ 650,848: 25x10
#996 @ 162,642: 12x26
#997 @ 924,725: 12x12
#998 @ 79,598: 15x11
#999 @ 387,656: 23x14
#1000 @ 601,124: 17x16
#1001 @ 586,176: 25x23
#1002 @ 246,658: 25x23
#1003 @ 524,764: 13x15
#1004 @ 631,562: 29x19
#1005 @ 83,364: 14x17
#1006 @ 107,373: 25x17
#1007 @ 171,275: 21x21
#1008 @ 368,954: 10x17
#1009 @ 434,589: 10x12
#1010 @ 421,288: 18x25
#1011 @ 871,117: 25x28
#1012 @ 494,541: 14x14
#1013 @ 498,328: 12x23
#1014 @ 217,32: 14x29
#1015 @ 583,827: 25x12
#1016 @ 8,465: 18x13
#1017 @ 405,229: 23x14
#1018 @ 216,862: 22x25
#1019 @ 869,952: 25x20
#1020 @ 341,146: 11x23
#1021 @ 662,62: 23x19
#1022 @ 861,650: 13x10
#1023 @ 710,602: 11x27
#1024 @ 849,337: 25x25
#1025 @ 913,975: 11x22
#1026 @ 855,82: 28x17
#1027 @ 408,96: 16x12
#1028 @ 608,98: 16x29
#1029 @ 749,920: 28x20
#1030 @ 57,463: 15x26
#1031 @ 888,575: 12x11
#1032 @ 717,601: 16x18
#1033 @ 594,456: 23x28
#1034 @ 920,775: 13x19
#1035 @ 912,712: 28x11
#1036 @ 102,729: 12x19
#1037 @ 172,470: 16x7
#1038 @ 456,488: 17x11
#1039 @ 204,612: 12x21
#1040 @ 388,628: 13x10
#1041 @ 320,566: 18x28
#1042 @ 572,734: 16x29
#1043 @ 968,210: 17x19
#1044 @ 219,579: 17x24
#1045 @ 821,102: 29x27
#1046 @ 715,863: 24x27
#1047 @ 552,704: 21x13
#1048 @ 877,415: 17x16
#1049 @ 786,633: 28x29
#1050 @ 847,931: 26x16
#1051 @ 763,935: 27x17
#1052 @ 641,662: 15x22
#1053 @ 808,757: 26x22
#1054 @ 134,496: 18x22
#1055 @ 200,830: 11x11
#1056 @ 789,808: 16x13
#1057 @ 651,105: 20x20
#1058 @ 153,732: 17x17
#1059 @ 632,836: 29x29
#1060 @ 111,832: 16x28
#1061 @ 133,148: 13x13
#1062 @ 662,390: 20x14
#1063 @ 438,305: 14x20
#1064 @ 360,480: 13x22
#1065 @ 821,176: 14x28
#1066 @ 969,737: 25x27
#1067 @ 42,734: 28x28
#1068 @ 339,945: 16x24
#1069 @ 817,501: 17x11
#1070 @ 754,973: 25x17
#1071 @ 909,555: 16x18
#1072 @ 516,535: 21x28
#1073 @ 826,191: 29x27
#1074 @ 313,95: 17x24
#1075 @ 92,865: 19x22
#1076 @ 212,592: 16x22
#1077 @ 965,198: 21x15
#1078 @ 604,742: 12x20
#1079 @ 866,40: 12x12
#1080 @ 308,267: 12x12
#1081 @ 182,410: 19x14
#1082 @ 78,474: 12x27
#1083 @ 130,151: 22x24
#1084 @ 354,64: 14x20
#1085 @ 314,602: 16x23
#1086 @ 860,27: 20x24
#1087 @ 674,456: 11x24
#1088 @ 697,790: 19x17
#1089 @ 592,312: 27x27
#1090 @ 670,919: 6x12
#1091 @ 135,542: 17x13
#1092 @ 273,519: 18x18
#1093 @ 703,305: 10x27
#1094 @ 502,528: 16x22
#1095 @ 472,80: 29x16
#1096 @ 284,611: 29x14
#1097 @ 47,305: 13x16
#1098 @ 949,7: 16x13
#1099 @ 568,163: 25x22
#1100 @ 787,234: 13x25
#1101 @ 96,448: 23x20
#1102 @ 657,571: 12x10
#1103 @ 206,304: 29x16
#1104 @ 55,799: 13x20
#1105 @ 441,775: 11x22
#1106 @ 446,90: 29x21
#1107 @ 3,451: 23x17
#1108 @ 716,257: 14x27
#1109 @ 316,104: 12x18
#1110 @ 321,115: 15x17
#1111 @ 937,185: 12x16
#1112 @ 241,68: 19x29
#1113 @ 126,44: 15x17
#1114 @ 53,701: 25x25
#1115 @ 328,17: 14x10
#1116 @ 849,619: 10x19
#1117 @ 10,669: 23x15
#1118 @ 205,522: 21x25
#1119 @ 210,279: 10x28
#1120 @ 170,11: 11x28
#1121 @ 516,571: 27x19
#1122 @ 96,267: 23x20
#1123 @ 874,952: 22x14
#1124 @ 376,604: 26x14
#1125 @ 772,127: 10x22
#1126 @ 58,666: 23x10
#1127 @ 174,586: 16x21
#1128 @ 189,442: 11x25
#1129 @ 233,253: 28x21
#1130 @ 271,157: 10x24
#1131 @ 42,126: 25x23
#1132 @ 380,773: 29x19
#1133 @ 870,236: 20x18
#1134 @ 21,692: 28x27
#1135 @ 307,3: 29x16
#1136 @ 514,532: 15x26
#1137 @ 174,659: 16x25
#1138 @ 831,618: 17x28
#1139 @ 553,905: 19x21
#1140 @ 582,571: 23x11
#1141 @ 819,414: 26x12
#1142 @ 307,571: 15x25
#1143 @ 937,299: 21x19
#1144 @ 416,15: 26x13
#1145 @ 280,114: 17x10
#1146 @ 669,715: 10x27
#1147 @ 199,601: 26x26
#1148 @ 523,332: 18x25
#1149 @ 370,821: 24x20
#1150 @ 482,532: 25x17
#1151 @ 377,485: 3x15
#1152 @ 390,918: 10x18
#1153 @ 559,339: 20x11
#1154 @ 659,969: 28x13
#1155 @ 641,107: 13x16
#1156 @ 798,887: 11x22
#1157 @ 714,717: 25x18
#1158 @ 920,161: 11x13
#1159 @ 976,736: 19x12
#1160 @ 316,868: 12x11
#1161 @ 102,681: 27x11
#1162 @ 363,954: 10x11
#1163 @ 382,490: 25x21
#1164 @ 717,579: 26x12
#1165 @ 498,717: 16x15
#1166 @ 47,954: 10x22
#1167 @ 520,396: 20x25
#1168 @ 33,19: 25x27
#1169 @ 782,511: 18x14
#1170 @ 342,755: 29x10
#1171 @ 442,488: 25x12
#1172 @ 785,552: 12x24
#1173 @ 960,331: 11x20
#1174 @ 194,832: 20x15
#1175 @ 658,63: 13x21
#1176 @ 245,947: 28x12
#1177 @ 716,565: 17x29
#1178 @ 399,63: 26x25
#1179 @ 521,934: 21x21
#1180 @ 854,71: 21x25
#1181 @ 713,624: 27x27
#1182 @ 849,545: 16x17
#1183 @ 243,577: 12x22
#1184 @ 496,899: 13x21
#1185 @ 509,902: 27x12
#1186 @ 530,524: 14x21
#1187 @ 314,822: 27x16
#1188 @ 767,282: 3x12
#1189 @ 839,542: 19x10
#1190 @ 959,517: 20x26
#1191 @ 64,382: 21x13
#1192 @ 575,9: 27x25
#1193 @ 44,325: 22x17
#1194 @ 187,261: 27x17
#1195 @ 568,704: 13x11
#1196 @ 535,749: 24x29
#1197 @ 800,4: 25x13
#1198 @ 248,607: 19x23
#1199 @ 377,46: 19x12
#1200 @ 785,15: 23x20
#1201 @ 853,212: 27x15
#1202 @ 279,831: 20x14
#1203 @ 509,725: 17x13
#1204 @ 549,927: 19x12
#1205 @ 193,232: 10x12
#1206 @ 740,373: 11x27
#1207 @ 727,578: 26x10
#1208 @ 11,711: 24x22
#1209 @ 970,181: 13x12
#1210 @ 161,551: 11x9
#1211 @ 663,650: 20x12
#1212 @ 0,743: 28x19
#1213 @ 676,627: 16x12
#1214 @ 641,716: 26x19
#1215 @ 654,908: 29x10
#1216 @ 200,105: 25x23
#1217 @ 490,540: 11x28
#1218 @ 152,658: 11x17
#1219 @ 133,626: 10x22
#1220 @ 968,316: 19x26
#1221 @ 235,832: 22x27
#1222 @ 335,11: 28x27
#1223 @ 472,82: 14x24
#1224 @ 551,297: 12x11
#1225 @ 821,933: 14x10
#1226 @ 948,953: 21x13
#1227 @ 307,514: 14x14
#1228 @ 299,947: 12x24
#1229 @ 116,63: 20x23
#1230 @ 928,166: 21x10
#1231 @ 446,631: 10x16
#1232 @ 326,592: 20x24
#1233 @ 366,483: 27x23
#1234 @ 306,292: 25x28
#1235 @ 156,270: 25x23
#1236 @ 198,335: 17x19
#1237 @ 898,670: 29x22
#1238 @ 624,521: 21x13
#1239 @ 209,178: 20x21
#1240 @ 190,33: 6x4
#1241 @ 566,812: 13x14
#1242 @ 102,835: 15x13
#1243 @ 153,196: 11x22
#1244 @ 153,670: 13x24
#1245 @ 551,295: 23x27
#1246 @ 132,475: 19x28
#1247 @ 760,292: 28x24
#1248 @ 766,755: 11x24
#1249 @ 917,944: 11x25
#1250 @ 736,765: 11x28
#1251 @ 421,45: 23x24
#1252 @ 351,323: 20x24
#1253 @ 850,371: 17x13
#1254 @ 520,955: 24x14
#1255 @ 276,113: 17x11
#1256 @ 616,27: 26x19
#1257 @ 782,826: 14x10
#1258 @ 526,471: 28x21
#1259 @ 668,210: 19x27
#1260 @ 930,732: 13x22
#1261 @ 272,77: 19x15
#1262 @ 359,24: 15x22
#1263 @ 49,668: 26x22
#1264 @ 629,465: 10x9
#1265 @ 429,317: 24x28
"""

let lines = input.split(separator:"\n")
let pairs = lines.map { line in
    return line.split(separator: " ")[2...]
    
}

print(pairs.compactMap {$0.first }.map { $0.prefix { $0 != "," } }.compactMap {Int($0)}.min()!)
dump(pairs)
var bounds: CGRect = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 0, height: 0))

var origin: CGPoint = CGPoint.zero





print(origin)

bounds.size = CGSize(width: 10, height: 10)
//: [Next](@next)
