# 필터링된 단어 목록

파이프라인에서 제거된 단어들의 전체 목록입니다.

## 요약

| 단계 | 설명 | 제거된 단어 수 | 남은 단어 수 |
|------|------|---------------|-------------|
| Step 1 | 원본 추출 | - | 9,641개 |
| Step 2 | 불용어 제거 | 185개 | 9,456개 |
| Step 3 | 고유명사 등 제거 | 3,222개 | 6,234개 |
| Step 4 | 최종 필터링 | 1,694개 | 4,540개 |

### Step 3 세부 분류
| 분류 | 단어 수 |
|------|---------|
| 고유명사 (인명/지명) | 2,542개 |
| 일반 단어 (재검토 필요) | 680개 |

### Step 4 세부 분류
| 분류 | 단어 수 |
|------|---------|
| 빈도 1회 단어 | 1,589개 |
| 숫자 | 105개 |
| 기타 | 0개 |

---

## Step 2: 불용어 (Stopwords) - 185개

관사, 대명사, 전치사, 접속사, be/have/do 동사 등 학습에 불필요한 기능어입니다.

| 단어 | 빈도 |
|------|------|
| the | 55,813 |
| and | 29,502 |
| be | 25,366 |
| of | 24,676 |
| to | 21,063 |
| you | 13,983 |
| a | 12,963 |
| in | 11,416 |
| will | 10,179 |
| have | 9,639 |
| i | 8,795 |
| he | 8,530 |
| for | 7,273 |
| they | 7,211 |
| your | 6,686 |
| it | 6,350 |
| his | 6,187 |
| with | 5,956 |
| not | 5,854 |
| that | 5,832 |
| them | 5,584 |
| say | 5,161 |
| who | 5,085 |
| from | 5,025 |
| on | 4,893 |
| him | 4,816 |
| do | 4,814 |
| all | 4,703 |
| my | 4,637 |
| their | 4,400 |
| me | 4,038 |
| but | 3,962 |
| this | 3,728 |
| go | 3,257 |
| come | 3,211 |
| so | 3,104 |
| then | 2,968 |
| one | 2,816 |
| when | 2,801 |
| what | 2,528 |
| out | 2,443 |
| by | 2,349 |
| give | 2,307 |
| at | 2,255 |
| make | 2,066 |
| day | 2,058 |
| or | 1,979 |
| take | 1,925 |
| up | 1,910 |
| there | 1,897 |
| we | 1,891 |
| no | 1,778 |
| if | 1,715 |
| her | 1,667 |
| because | 1,664 |
| those | 1,488 |
| u | 1,434 |
| man | 1,349 |
| into | 1,348 |
| before | 1,286 |
| may | 1,262 |
| now | 1,219 |
| our | 1,217 |
| down | 1,212 |
| know | 1,206 |
| these | 1,112 |
| see | 1,108 |
| over | 1,103 |
| let | 1,102 |
| an | 1,099 |
| men | 1,080 |
| put | 1,075 |
| she | 1,009 |
| time | 946 |
| about | 901 |
| year | 862 |
| among | 835 |
| also | 832 |
| way | 805 |
| other | 759 |
| must | 753 |
| thing | 748 |
| through | 746 |
| can | 738 |
| how | 735 |
| after | 728 |
| even | 712 |
| where | 701 |
| which | 695 |
| own | 693 |
| would | 686 |
| great | 685 |
| two | 677 |
| set | 674 |
| each | 616 |
| every | 613 |
| saw | 608 |
| more | 587 |
| any | 584 |
| some | 578 |
| why | 562 |
| than | 538 |
| many | 518 |
| get | 508 |
| only | 500 |
| shall | 482 |
| again | 457 |
| while | 436 |
| until | 422 |
| yet | 407 |
| around | 407 |
| just | 405 |
| off | 402 |
| here | 402 |
| whom | 393 |
| under | 384 |
| first | 380 |
| another | 373 |
| without | 370 |
| should | 363 |
| never | 354 |
| himself | 346 |
| well | 340 |
| very | 340 |
| nothing | 338 |
| old | 338 |
| though | 337 |
| along | 321 |
| nor | 320 |
| themselves | 316 |
| near | 301 |
| still | 298 |
| both | 295 |
| whose | 289 |
| same | 278 |
| could | 277 |
| since | 273 |
| too | 269 |
| ever | 251 |
| such | 239 |
| toward | 227 |
| between | 223 |
| yourselves | 219 |
| anything | 209 |
| new | 201 |
| might | 200 |
| most | 188 |
| much | 188 |
| yourself | 187 |
| once | 180 |
| second | 166 |
| myself | 155 |
| above | 147 |
| always | 141 |
| during | 132 |
| till | 130 |
| whether | 121 |
| something | 119 |
| within | 107 |
| upon | 103 |
| behind | 97 |
| yes | 94 |
| already | 92 |
| beside | 88 |
| yours | 86 |
| few | 77 |
| mine | 72 |
| whenever | 71 |
| beyond | 68 |
| wherever | 67 |
| unless | 63 |
| although | 62 |
| across | 58 |
| itself | 53 |
| ourselves | 48 |
| herself | 45 |
| below | 44 |
| besides | 41 |
| often | 26 |
| being | 26 |
| theirs | 23 |
| ours | 18 |
| saying | 10 |
| onto | 9 |
| hers | 4 |

---

## Step 3-A: 고유명사 (인명/지명) - 2,542개

성경에 등장하는 인명, 지명 등 실제 고유명사입니다.

| 단어 | 빈도 |
|------|------|
| israel | 1,848 |
| jesus | 1,301 |
| david | 1,015 |
| judah | 847 |
| moses | 846 |
| jerusalem | 811 |
| israelite | 805 |
| egypt | 615 |
| write | 441 |
| saul | 410 |
| jacob | 385 |
| aaron | 353 |
| levite | 310 |
| solomon | 288 |
| babylon | 284 |
| philistine | 275 |
| pharaoh | 271 |
| joseph | 264 |
| abraham | 252 |
| joshua | 231 |
| paul | 213 |
| jordan | 196 |
| peter | 178 |
| ephraim | 168 |
| zion | 165 |
| moab | 162 |
| john | 158 |
| manasseh | 150 |
| jeremiah | 147 |
| samuel | 145 |
| benjamin | 137 |
| isaac | 135 |
| hezekiah | 133 |
| egyptian | 129 |
| gilead | 129 |
| assyria | 123 |
| samaria | 121 |
| jonathan | 117 |
| edom | 115 |
| elijah | 114 |
| ammonite | 110 |
| gentile | 107 |
| jeroboam | 104 |
| absalom | 103 |
| esau | 101 |
| pharisee | 101 |
| elisha | 94 |
| nebuchadnezzar | 90 |
| jehoshaphat | 87 |
| canaan | 86 |
| simon | 78 |
| daniel | 78 |
| eleazar | 77 |
| amorites | 77 |
| galilee | 75 |
| canaanite | 75 |
| hebron | 74 |
| bethel | 73 |
| lebanon | 70 |
| synagogue | 69 |
| babylonian | 67 |
| aramean | 65 |
| abram | 65 |
| zedekiah | 65 |
| balaam | 64 |
| shechem | 64 |
| job | 64 |
| pilate | 62 |
| abimelek | 62 |
| gad | 62 |
| dan | 62 |
| josiah | 61 |
| jericho | 61 |
| hittite | 61 |
| bashan | 60 |
| tyre | 60 |
| mary | 60 |
| abner | 59 |
| noah | 58 |
| damascus | 58 |
| mordecai | 58 |
| zechariah | 57 |
| reuben | 56 |
| laban | 54 |
| isaiah | 53 |
| naphtali | 53 |
| euphrates | 53 |
| jehoiada | 53 |
| zadok | 53 |
| ephah | 52 |
| rehoboam | 52 |
| jewish | 51 |
| bethlehem | 51 |
| certainly | 51 |
| ephod | 50 |
| zebulun | 50 |
| haman | 49 |
| azariah | 48 |
| gideon | 48 |
| gibeah | 48 |
| ishmael | 48 |
| herod | 48 |
| esther | 47 |
| sodom | 47 |
| jesse | 47 |
| rachel | 47 |
| hadad | 47 |
| asher | 45 |
| benaiah | 45 |
| judea | 45 |
| shimei | 45 |
| hebrew | 45 |
| ahaziah | 44 |
| mizpah | 44 |
| nathan | 43 |
| simeon | 43 |
| issachar | 43 |
| amaziah | 42 |
| joash | 42 |
| jezreel | 41 |
| samson | 40 |
| shemaiah | 40 |
| caleb | 40 |
| gilgal | 40 |
| gibeon | 40 |
| sarah | 40 |
| asherah | 39 |
| negev | 39 |
| sinai | 39 |
| eli | 39 |
| heshbon | 38 |
| balak | 38 |
| midian | 37 |
| hamath | 37 |
| kiriath | 37 |
| uriah | 37 |
| jehoiakim | 37 |
| ai | 36 |
| abijah | 36 |
| philip | 36 |
| sihon | 35 |
| barnabas | 34 |
| sheba | 34 |
| asaph | 34 |
| benjamites | 34 |
| beersheba | 34 |
| sidon | 34 |
| amalekites | 34 |
| ramah | 34 |
| short | 33 |
| jebusites | 33 |
| jehoram | 32 |
| rebekah | 32 |
| micah | 32 |
| hilkiah | 32 |
| gedaliah | 32 |
| shiloh | 32 |
| xerxes | 31 |
| shaphan | 30 |
| arabah | 30 |
| jonah | 30 |
| reubenites | 30 |
| abiathar | 30 |
| maakah | 30 |
| uzziah | 30 |
| nun | 30 |
| jotham | 29 |
| persia | 29 |
| caesar | 29 |
| boaz | 29 |
| amnon | 29 |
| gadites | 29 |
| tamar | 29 |
| baruch | 28 |
| korah | 28 |
| jehoiachin | 28 |
| hananiah | 28 |
| ramoth | 28 |
| greek | 28 |
| kadesh | 28 |
| joram | 28 |
| jehoash | 28 |
| ravine | 28 |
| adonijah | 28 |
| micaiah | 28 |
| ezra | 27 |
| nazareth | 27 |
| carmel | 27 |
| mediterranean | 27 |
| baasha | 27 |
| naomi | 27 |
| zeruiah | 26 |
| darius | 26 |
| shallum | 26 |
| abishai | 26 |
| everywhere | 26 |
| hiram | 25 |
| zerubbabel | 25 |
| meshullam | 25 |
| phinehas | 25 |
| nebat | 25 |
| shemesh | 25 |
| arnon | 25 |
| fortune | 25 |
| johanan | 25 |
| timothy | 25 |
| gorge | 25 |
| nineveh | 24 |
| jephthah | 24 |
| ekron | 24 |
| hazael | 24 |
| lachish | 24 |
| hivites | 23 |
| cyrus | 23 |
| gomorrah | 23 |
| perizzites | 23 |
| macedonia | 23 |
| naaman | 23 |
| maaseiah | 23 |
| adam | 23 |
| makir | 22 |
| obadiah | 22 |
| ruth | 22 |
| perez | 22 |
| jabesh | 22 |
| og | 22 |
| naboth | 22 |
| ahijah | 22 |
| jezebel | 22 |
| jehoahaz | 22 |
| en | 22 |
| hezron | 21 |
| kohath | 21 |
| zerah | 21 |
| ashdod | 21 |
| hazor | 21 |
| sisera | 21 |
| merari | 21 |
| moabite | 21 |
| antioch | 21 |
| rimmon | 21 |
| joel | 21 |
| nadab | 21 |
| silas | 21 |
| ithamar | 21 |
| assyrian | 20 |
| elkanah | 20 |
| sanhedrin | 20 |
| nethaniah | 20 |
| ahikam | 20 |
| achish | 20 |
| nabal | 20 |
| gehazi | 20 |
| ahithophel | 20 |
| jearim | 20 |
| eliab | 20 |
| sukkoth | 19 |
| hadadezer | 19 |
| moabites | 19 |
| nahor | 19 |
| seraiah | 19 |
| asahel | 19 |
| caesarea | 19 |
| shelah | 19 |
| tarshish | 19 |
| michal | 18 |
| ahimelek | 18 |
| anathoth | 18 |
| lazarus | 18 |
| hanan | 18 |
| eliakim | 18 |
| keilah | 18 |
| tirzah | 18 |
| zimri | 18 |
| amasa | 18 |
| ephesus | 17 |
| jeshua | 17 |
| libnah | 17 |
| abigail | 17 |
| horeb | 17 |
| levitical | 17 |
| midianites | 17 |
| araunah | 17 |
| athaliah | 17 |
| hermon | 16 |
| amariah | 16 |
| aroer | 16 |
| uzziel | 16 |
| sennacherib | 16 |
| mattaniah | 16 |
| danites | 16 |
| elishama | 16 |
| malkijah | 16 |
| mephibosheth | 16 |
| nebuzaradan | 16 |
| capernaum | 16 |
| heman | 16 |
| molek | 16 |
| roman | 16 |
| sarai | 16 |
| amminadab | 16 |
| eliashib | 16 |
| jephunneh | 16 |
| cushite | 15 |
| baptist | 15 |
| hashabiah | 15 |
| ziklag | 15 |
| manoah | 15 |
| ahitub | 15 |
| ahimaaz | 15 |
| sidonians | 15 |
| edomites | 15 |
| barak | 15 |
| hagar | 15 |
| rabbah | 15 |
| eliezer | 15 |
| artaxerxes | 15 |
| gershon | 15 |
| tobiah | 15 |
| nazirite | 15 |
| festus | 15 |
| hannah | 15 |
| kohathite | 15 |
| michael | 15 |
| goshen | 15 |
| ammon | 15 |
| kareah | 14 |
| horon | 14 |
| shadrach | 14 |
| eliphaz | 14 |
| titus | 14 |
| abednego | 14 |
| rahab | 14 |
| nethanel | 14 |
| joppa | 14 |
| gezer | 14 |
| meshach | 14 |
| zobah | 14 |
| amram | 14 |
| andrew | 14 |
| eglon | 14 |
| mahanaim | 14 |
| midianite | 14 |
| jehiel | 14 |
| terah | 13 |
| kohathites | 13 |
| shealtiel | 13 |
| benjamite | 13 |
| jazer | 13 |
| martha | 13 |
| hamor | 13 |
| doesnt | 13 |
| tekoa | 13 |
| cyprus | 13 |
| jedaiah | 13 |
| jozadak | 13 |
| ashkelon | 13 |
| hinnom | 13 |
| jeduthun | 13 |
| nahshon | 13 |
| samaritan | 13 |
| japheth | 13 |
| hanun | 13 |
| agrippa | 13 |
| remaliah | 13 |
| pashhur | 13 |
| barzillai | 13 |
| miriam | 13 |
| ananias | 13 |
| enoch | 13 |
| shephatiah | 13 |
| rehob | 12 |
| hushai | 12 |
| ephron | 12 |
| abihu | 12 |
| barabbas | 12 |
| kedar | 12 |
| faithless | 12 |
| creator | 12 |
| bathsheba | 12 |
| gershonites | 12 |
| dagon | 12 |
| bethany | 12 |
| amalek | 12 |
| zebedee | 12 |
| tabor | 12 |
| stephen | 12 |
| mahli | 12 |
| aramaic | 12 |
| debir | 12 |
| lamech | 12 |
| berekiah | 12 |
| harran | 12 |
| megiddo | 12 |
| magdalene | 12 |
| jeiel | 12 |
| ophir | 12 |
| pekah | 12 |
| abinadab | 12 |
| hoshea | 12 |
| paran | 12 |
| hazar | 12 |
| rekab | 12 |
| zikri | 12 |
| kenaz | 11 |
| thomas | 11 |
| zephaniah | 11 |
| rezin | 11 |
| hepher | 11 |
| mikmash | 11 |
| timnah | 11 |
| elizabeth | 11 |
| harim | 11 |
| riblah | 11 |
| hanani | 11 |
| kedesh | 11 |
| geshur | 11 |
| dibon | 11 |
| melchizedek | 11 |
| shekaniah | 11 |
| milkah | 11 |
| paddan | 11 |
| haggai | 11 |
| anakites | 11 |
| rome | 11 |
| teman | 11 |
| jozabad | 11 |
| iscariot | 11 |
| reuel | 11 |
| heber | 11 |
| meribah | 11 |
| kidron | 11 |
| uzzah | 11 |
| jethro | 11 |
| deborah | 11 |
| beriah | 11 |
| abiram | 11 |
| felix | 10 |
| haran | 10 |
| vashti | 10 |
| counselor | 10 |
| shelemiah | 10 |
| bilhah | 10 |
| neriah | 10 |
| aijalon | 10 |
| zorah | 10 |
| tubal | 10 |
| shaul | 10 |
| chaldean | 10 |
| achaia | 10 |
| medes | 10 |
| zalmunna | 10 |
| dedan | 10 |
| belteshazzar | 10 |
| melek | 10 |
| rephaites | 10 |
| cornelius | 10 |
| arphaxad | 10 |
| zebah | 10 |
| dathan | 10 |
| er | 10 |
| elihu | 10 |
| gibeonites | 10 |
| merarite | 10 |
| barnea | 10 |
| jether | 10 |
| babylonia | 10 |
| gershonite | 10 |
| necho | 10 |
| jehonadab | 10 |
| gerar | 10 |
| immer | 10 |
| zakkur | 10 |
| jeroham | 10 |
| ammihud | 10 |
| bethuel | 10 |
| meshek | 10 |
| sanballat | 10 |
| topheth | 10 |
| othniel | 10 |
| eliel | 10 |
| mamre | 10 |
| cephas | 9 |
| kerethites | 9 |
| dinah | 9 |
| ophrah | 9 |
| amorite | 9 |
| makkedah | 9 |
| abdon | 9 |
| jehohanan | 9 |
| galilean | 9 |
| shebna | 9 |
| kenites | 9 |
| merarites | 9 |
| adullam | 9 |
| izhar | 9 |
| geber | 9 |
| caiaphas | 9 |
| nahash | 9 |
| youre | 9 |
| sherebiah | 9 |
| jobab | 9 |
| zebadiah | 9 |
| aphek | 9 |
| cushites | 9 |
| azmaveth | 9 |
| ashtoreth | 9 |
| jebusite | 9 |
| shammah | 9 |
| huram | 9 |
| corinth | 9 |
| baanah | 9 |
| abyss | 9 |
| jeush | 9 |
| shobal | 9 |
| hormah | 9 |
| bezalel | 9 |
| zelophehad | 9 |
| jerahmeel | 9 |
| nehemiah | 9 |
| adaiah | 9 |
| jerimoth | 9 |
| enosh | 8 |
| tappuah | 8 |
| pisgah | 8 |
| bikri | 8 |
| karmi | 8 |
| mareshah | 8 |
| eliphelet | 8 |
| gomer | 8 |
| zibeon | 8 |
| rephaim | 8 |
| belshazzar | 8 |
| asaiah | 8 |
| pedaiah | 8 |
| philistia | 8 |
| rehum | 8 |
| abarim | 8 |
| edrei | 8 |
| kadmiel | 8 |
| gilboa | 8 |
| jahath | 8 |
| persian | 8 |
| akkub | 8 |
| peleg | 8 |
| netophathite | 8 |
| oholibamah | 8 |
| gileadite | 8 |
| gittite | 8 |
| hades | 8 |
| syria | 8 |
| mahalalel | 8 |
| zabad | 8 |
| shaphat | 8 |
| jakin | 8 |
| bozrah | 8 |
| kebar | 8 |
| uz | 8 |
| memphis | 8 |
| arabia | 8 |
| menahem | 8 |
| rapha | 8 |
| cilicia | 8 |
| chemosh | 8 |
| amos | 8 |
| mishael | 8 |
| ephraimites | 8 |
| simeonites | 8 |
| binnui | 8 |
| shelomith | 8 |
| shunammite | 8 |
| mushi | 8 |
| mattithiah | 8 |
| elnathan | 7 |
| ephraimite | 7 |
| jarmuth | 7 |
| zippor | 7 |
| leviathan | 7 |
| havilah | 7 |
| el | 7 |
| matthew | 7 |
| eshtaol | 7 |
| methuselah | 7 |
| ladan | 7 |
| bethsaida | 7 |
| gedor | 7 |
| jeshaiah | 7 |
| sharon | 7 |
| aquila | 7 |
| hoglah | 7 |
| delaiah | 7 |
| akbor | 7 |
| salmon | 7 |
| ethan | 7 |
| dishon | 7 |
| elioenai | 7 |
| beelzebul | 7 |
| tahpanhes | 7 |
| gershom | 7 |
| jahaz | 7 |
| kenan | 7 |
| jabin | 7 |
| thessalonica | 7 |
| meremoth | 7 |
| pelethites | 7 |
| kiriathaim | 7 |
| ahinoam | 7 |
| basemath | 7 |
| edomite | 7 |
| achan | 7 |
| zilpah | 7 |
| jabbok | 7 |
| taanach | 7 |
| shishak | 7 |
| ittai | 7 |
| lotan | 7 |
| azekah | 7 |
| jezreelite | 7 |
| delilah | 7 |
| elath | 7 |
| greece | 7 |
| lo | 7 |
| ashur | 7 |
| girgashites | 7 |
| gamaliel | 7 |
| ezion | 7 |
| malluk | 7 |
| goliath | 7 |
| cyrene | 7 |
| priscilla | 7 |
| naioth | 6 |
| eshkol | 6 |
| talmai | 6 |
| hodiah | 6 |
| hodaviah | 6 |
| arioch | 6 |
| oholibah | 6 |
| ar | 6 |
| bebai | 6 |
| arpad | 6 |
| shema | 6 |
| hagrites | 6 |
| jairus | 6 |
| azrikam | 6 |
| shouldnt | 6 |
| parosh | 6 |
| eliasaph | 6 |
| tishbite | 6 |
| machpelah | 6 |
| ephrathah | 6 |
| abihail | 6 |
| laodicea | 6 |
| tahath | 6 |
| timna | 6 |
| pekahiah | 6 |
| nicodemus | 6 |
| ahiezer | 6 |
| joktan | 6 |
| abiezer | 6 |
| ashtaroth | 6 |
| shammai | 6 |
| bezer | 6 |
| zeboyim | 6 |
| shual | 6 |
| ammiel | 6 |
| shammua | 6 |
| hosanna | 6 |
| ishmaelites | 6 |
| troas | 6 |
| jediael | 6 |
| sepharvaim | 6 |
| peniel | 6 |
| shebaniah | 6 |
| philippi | 6 |
| bigvai | 6 |
| meraioth | 6 |
| baalah | 6 |
| temanite | 6 |
| jahaziel | 6 |
| nathanael | 6 |
| shubael | 6 |
| lystra | 6 |
| beeroth | 6 |
| ataroth | 6 |
| serug | 6 |
| shimron | 6 |
| ishiah | 6 |
| hanok | 6 |
| herodias | 6 |
| jamin | 6 |
| migdol | 6 |
| iconium | 6 |
| crete | 6 |
| sharezer | 6 |
| azarel | 6 |
| zebul | 6 |
| kishon | 6 |
| thummim | 6 |
| aiah | 6 |
| elimelek | 6 |
| gihon | 6 |
| laish | 6 |
| talmon | 5 |
| oholah | 5 |
| addar | 5 |
| nimshi | 5 |
| hattaavah | 5 |
| haggith | 5 |
| perazim | 5 |
| jonadab | 5 |
| bildad | 5 |
| abidan | 5 |
| hashum | 5 |
| ephrath | 5 |
| shelumiel | 5 |
| purim | 5 |
| deuel | 5 |
| hattush | 5 |
| helon | 5 |
| tychicus | 5 |
| adoniram | 5 |
| pamphylia | 5 |
| hophni | 5 |
| naamah | 5 |
| shethar | 5 |
| abishua | 5 |
| kibroth | 5 |
| lydia | 5 |
| kenaanah | 5 |
| sokoh | 5 |
| zohar | 5 |
| ophel | 5 |
| libni | 5 |
| bezek | 5 |
| pedahzur | 5 |
| massah | 5 |
| zurishaddai | 5 |
| potiphar | 5 |
| sibbekai | 5 |
| joiarib | 5 |
| kenite | 5 |
| gozan | 5 |
| alexander | 5 |
| wasnt | 5 |
| hosea | 5 |
| shuhite | 5 |
| serah | 5 |
| abishag | 5 |
| hammedatha | 5 |
| ahohite | 5 |
| anath | 5 |
| marduk | 5 |
| hosah | 5 |
| jashub | 5 |
| nahath | 5 |
| ariel | 5 |
| medeba | 5 |
| jaazaniah | 5 |
| hararite | 5 |
| baalath | 5 |
| elizur | 5 |
| athens | 5 |
| hakkoz | 5 |
| bahurim | 5 |
| bukki | 5 |
| aksah | 5 |
| amasai | 5 |
| raamah | 5 |
| beker | 5 |
| rekem | 5 |
| hareseth | 5 |
| gaius | 5 |
| rephaiah | 5 |
| magog | 5 |
| hazeroth | 5 |
| okran | 5 |
| jeremoth | 5 |
| galatia | 5 |
| phoenicia | 5 |
| dishan | 5 |
| gideoni | 5 |
| pagiel | 5 |
| hebronites | 5 |
| mahlah | 5 |
| kedorlaomer | 5 |
| ahilud | 5 |
| arkite | 5 |
| tarsus | 5 |
| zephon | 5 |
| rephidim | 5 |
| hasshub | 5 |
| gemariah | 5 |
| judaism | 5 |
| zattu | 5 |
| horonaim | 5 |
| helez | 5 |
| achor | 5 |
| agagite | 5 |
| zerahiah | 5 |
| zanoah | 5 |
| hushathite | 5 |
| shittim | 5 |
| pelatiah | 5 |
| ahira | 5 |
| ur | 5 |
| elealeh | 5 |
| aristarchus | 5 |
| artemis | 5 |
| sibmah | 5 |
| argob | 5 |
| shedeur | 5 |
| oholiab | 5 |
| pallu | 5 |
| alphaeus | 5 |
| jason | 5 |
| rameses | 5 |
| admah | 5 |
| nebaioth | 5 |
| eshtemoa | 5 |
| ashan | 5 |
| japhia | 5 |
| gibbethon | 5 |
| ammishaddai | 5 |
| joiada | 5 |
| kephirah | 4 |
| zaphon | 4 |
| shamir | 4 |
| berea | 4 |
| jattir | 4 |
| nepheg | 4 |
| nergal | 4 |
| zerahite | 4 |
| zeresh | 4 |
| havvoth | 4 |
| lydda | 4 |
| bartholomew | 4 |
| horite | 4 |
| siloam | 4 |
| kimham | 4 |
| bamoth | 4 |
| hegai | 4 |
| ithrite | 4 |
| pethahiah | 4 |
| gileadites | 4 |
| naamathite | 4 |
| shimea | 4 |
| shinar | 4 |
| shobab | 4 |
| shemariah | 4 |
| sheshbazzar | 4 |
| assir | 4 |
| millo | 4 |
| zophar | 4 |
| shimshai | 4 |
| merab | 4 |
| elizaphan | 4 |
| derbe | 4 |
| ephesian | 4 |
| jabez | 4 |
| uriel | 4 |
| gerizim | 4 |
| zarephath | 4 |
| attai | 4 |
| senir | 4 |
| husham | 4 |
| elhanan | 4 |
| debar | 4 |
| jehozabad | 4 |
| dumah | 4 |
| hanamel | 4 |
| hahiroth | 4 |
| eleasah | 4 |
| kinnereth | 4 |
| moladah | 4 |
| hananel | 4 |
| gaash | 4 |
| jalam | 4 |
| horesh | 4 |
| samlah | 4 |
| joiakim | 4 |
| geshem | 4 |
| shimeah | 4 |
| javan | 4 |
| eve | 4 |
| hadoram | 4 |
| oboth | 4 |
| jeriah | 4 |
| amalekite | 4 |
| rezon | 4 |
| eliada | 4 |
| meshelemiah | 4 |
| mephaath | 4 |
| epher | 4 |
| akzib | 4 |
| jeshurun | 4 |
| baladan | 4 |
| pelet | 4 |
| arimathea | 4 |
| rizpah | 4 |
| salekah | 4 |
| jokshan | 4 |
| perath | 4 |
| shuthelah | 4 |
| sallu | 4 |
| reaiah | 4 |
| korahites | 4 |
| mesha | 4 |
| paseah | 4 |
| azgad | 4 |
| zarethan | 4 |
| golan | 4 |
| jeshimoth | 4 |
| bilhan | 4 |
| henadad | 4 |
| rehabiah | 4 |
| italy | 4 |
| etham | 4 |
| imnah | 4 |
| maakathite | 4 |
| salem | 4 |
| naharaim | 4 |
| shemiramoth | 4 |
| giddel | 4 |
| abinoam | 4 |
| rehoboth | 4 |
| mijamin | 4 |
| byblos | 4 |
| mishma | 4 |
| meholah | 4 |
| jehudi | 4 |
| ishvi | 4 |
| nazarene | 4 |
| kerioth | 4 |
| horites | 4 |
| naarah | 4 |
| sheshan | 4 |
| ir | 4 |
| harsha | 4 |
| jokneam | 4 |
| nimrod | 4 |
| mahlon | 4 |
| sepher | 4 |
| azubah | 4 |
| zipporah | 4 |
| thyatira | 4 |
| beerothite | 4 |
| togarmah | 4 |
| macedonian | 4 |
| rogel | 4 |
| jeshimon | 4 |
| kedemoth | 4 |
| marah | 4 |
| shilonite | 4 |
| alemeth | 4 |
| naphoth | 4 |
| keturah | 4 |
| ararat | 4 |
| tattenai | 4 |
| gabriel | 4 |
| shimri | 4 |
| mikloth | 4 |
| izharites | 4 |
| imlah | 4 |
| rekabites | 4 |
| ahiman | 4 |
| shihor | 4 |
| shalmaneser | 4 |
| phicol | 3 |
| nemuel | 3 |
| ithran | 3 |
| siddim | 3 |
| jotbathah | 3 |
| ginnethon | 3 |
| bezai | 3 |
| luke | 3 |
| mahath | 3 |
| bilgah | 3 |
| halah | 3 |
| azriel | 3 |
| demetrius | 3 |
| trophimus | 3 |
| hushim | 3 |
| tahpenes | 3 |
| ashkenaz | 3 |
| geliloth | 3 |
| stephanas | 3 |
| maharai | 3 |
| azzur | 3 |
| herodians | 3 |
| adonikam | 3 |
| ashbel | 3 |
| sardis | 3 |
| zerahites | 3 |
| pleiades | 3 |
| netophathites | 3 |
| zabdi | 3 |
| bernice | 3 |
| shemida | 3 |
| gennesaret | 3 |
| ibhar | 3 |
| geshurites | 3 |
| peninnah | 3 |
| moreh | 3 |
| nekoda | 3 |
| dothan | 3 |
| jaakan | 3 |
| kanah | 3 |
| dammim | 3 |
| perga | 3 |
| caphtor | 3 |
| pontus | 3 |
| gatam | 3 |
| elishah | 3 |
| jarib | 3 |
| aeneas | 3 |
| kabzeel | 3 |
| gerasenes | 3 |
| asenath | 3 |
| naphish | 3 |
| ethiopian | 3 |
| zacchaeus | 3 |
| nehelamite | 3 |
| esarhaddon | 3 |
| ahisamak | 3 |
| ebiasaph | 3 |
| shillem | 3 |
| sabeans | 3 |
| bethphage | 3 |
| baana | 3 |
| gannim | 3 |
| jehosheba | 3 |
| didymus | 3 |
| elpaal | 3 |
| ishmaelite | 3 |
| timnath | 3 |
| japhlet | 3 |
| zepho | 3 |
| mibsam | 3 |
| helek | 3 |
| arkites | 3 |
| alpha | 3 |
| nimrah | 3 |
| hakilah | 3 |
| asriel | 3 |
| jezer | 3 |
| pontius | 3 |
| malkiel | 3 |
| avvites | 3 |
| konaniah | 3 |
| jeshanah | 3 |
| hamon | 3 |
| demas | 3 |
| mered | 3 |
| ivvah | 3 |
| abiezrites | 3 |
| bunni | 3 |
| diblathaim | 3 |
| lahai | 3 |
| harosheth | 3 |
| jaaziel | 3 |
| daberath | 3 |
| janoah | 3 |
| jebus | 3 |
| pentecost | 3 |
| caphtorites | 3 |
| miniamin | 3 |
| shabbethai | 3 |
| aswan | 3 |
| hadid | 3 |
| areopagus | 3 |
| gareb | 3 |
| adiel | 3 |
| zillah | 3 |
| elishua | 3 |
| memukan | 3 |
| sheshai | 3 |
| pelonite | 3 |
| korahite | 3 |
| jashobeam | 3 |
| kenizzite | 3 |
| sirion | 3 |
| habor | 3 |
| potiphera | 3 |
| zimmah | 3 |
| manassites | 3 |
| golgotha | 3 |
| pirathonite | 3 |
| miletus | 3 |
| hamul | 3 |
| kenaniah | 3 |
| helkath | 3 |
| carchemish | 3 |
| migdal | 3 |
| erastus | 3 |
| ebenezer | 3 |
| claudius | 3 |
| ibleam | 3 |
| orion | 3 |
| tibni | 3 |
| akshaph | 3 |
| adrammelek | 3 |
| shaaraim | 3 |
| penuel | 3 |
| stubbornly | 3 |
| shomer | 3 |
| epaphras | 3 |
| almon | 3 |
| nobah | 3 |
| cushan | 3 |
| jetur | 3 |
| mehetabel | 3 |
| paltiel | 3 |
| berakah | 3 |
| shelomoth | 3 |
| judean | 3 |
| bakbukiah | 3 |
| kemuel | 3 |
| abiel | 3 |
| libya | 3 |
| manahath | 3 |
| dodai | 3 |
| holon | 3 |
| meshezabel | 3 |
| gallio | 3 |
| abihud | 3 |
| mizzah | 3 |
| hamutal | 3 |
| tobijah | 3 |
| segub | 3 |
| iphtah | 3 |
| jaddua | 3 |
| phrygia | 3 |
| tebah | 3 |
| immanuel | 3 |
| kelita | 3 |
| mattenai | 3 |
| zalmon | 3 |
| hoshaiah | 3 |
| kilion | 3 |
| decapolis | 3 |
| galal | 3 |
| endor | 3 |
| shunem | 3 |
| azaziah | 3 |
| ahava | 3 |
| hathak | 3 |
| tiphsah | 3 |
| zered | 3 |
| neariah | 3 |
| nephilim | 3 |
| justus | 3 |
| shemer | 3 |
| moresheth | 3 |
| ikkesh | 3 |
| haggoyim | 3 |
| werent | 3 |
| ibzan | 3 |
| juttah | 3 |
| meunites | 3 |
| jekamiah | 3 |
| mattan | 3 |
| horonite | 3 |
| pelaiah | 3 |
| heldai | 3 |
| cushi | 2 |
| amraphel | 2 |
| arodi | 2 |
| tigris | 2 |
| ludites | 2 |
| nahum | 2 |
| mishal | 2 |
| pirathon | 2 |
| peleth | 2 |
| jetheth | 2 |
| jerusha | 2 |
| galeed | 2 |
| hazezon | 2 |
| huppites | 2 |
| mehujael | 2 |
| chaldea | 2 |
| gederah | 2 |
| barah | 2 |
| ithream | 2 |
| izrahiah | 2 |
| temah | 2 |
| hasupha | 2 |
| teresh | 2 |
| kolaiah | 2 |
| eliathah | 2 |
| rodanites | 2 |
| minnith | 2 |
| sinites | 2 |
| zillethai | 2 |
| anaiah | 2 |
| joanna | 2 |
| uzzielites | 2 |
| hatipha | 2 |
| meonothai | 2 |
| besor | 2 |
| jaaziah | 2 |
| habakkuk | 2 |
| tabeel | 2 |
| bozkath | 2 |
| gazzam | 2 |
| addon | 2 |
| keran | 2 |
| shalmai | 2 |
| hattil | 2 |
| ninevites | 2 |
| hatita | 2 |
| ramath | 2 |
| cappadocia | 2 |
| tahan | 2 |
| carites | 2 |
| zedad | 2 |
| moadiah | 2 |
| ephlal | 2 |
| jahziel | 2 |
| lucius | 2 |
| tikvah | 2 |
| bilshan | 2 |
| agabus | 2 |
| hakaliah | 2 |
| shashak | 2 |
| eshton | 2 |
| jehoiarib | 2 |
| avith | 2 |
| nephusim | 2 |
| heled | 2 |
| epaphroditus | 2 |
| elasah | 2 |
| eltekeh | 2 |
| sabteka | 2 |
| ashhur | 2 |
| seled | 2 |
| kartah | 2 |
| hazarmaveth | 2 |
| bithynia | 2 |
| hezir | 2 |
| anamites | 2 |
| mikmethath | 2 |
| attalia | 2 |
| sosthenes | 2 |
| adriel | 2 |
| hariph | 2 |
| helah | 2 |
| shulammite | 2 |
| madai | 2 |
| zorathites | 2 |
| gazez | 2 |
| hemdan | 2 |
| ashnah | 2 |
| jogbehah | 2 |
| assos | 2 |
| amittai | 2 |
| gahar | 2 |
| melah | 2 |
| regem | 2 |
| ishmaiah | 2 |
| zemaraim | 2 |
| eliphelehu | 2 |
| india | 2 |
| tabitha | 2 |
| ahlai | 2 |
| halak | 2 |
| ishbak | 2 |
| harhur | 2 |
| mysia | 2 |
| hivite | 2 |
| haggidgad | 2 |
| hotham | 2 |
| hashabneiah | 2 |
| jehdeiah | 2 |
| joshaphat | 2 |
| shaveh | 2 |
| raham | 2 |
| assar | 2 |
| tirhakah | 2 |
| alvan | 2 |
| gamul | 2 |
| kerith | 2 |
| kerub | 2 |
| kasiphia | 2 |
| salma | 2 |
| ithiel | 2 |
| elzabad | 2 |
| jehallelel | 2 |
| jadah | 2 |
| eliam | 2 |
| bigthana | 2 |
| abishalom | 2 |
| sheariah | 2 |
| shobai | 2 |
| hamites | 2 |
| bokeru | 2 |
| matred | 2 |
| eglaim | 2 |
| madmannah | 2 |
| lysias | 2 |
| padon | 2 |
| jeconiah | 2 |
| eldad | 2 |
| ezbon | 2 |
| rhodes | 2 |
| ishvah | 2 |
| eshban | 2 |
| ginath | 2 |
| ether | 2 |
| matthias | 2 |
| migron | 2 |
| tiras | 2 |
| jashar | 2 |
| darkon | 2 |
| uphaz | 2 |
| praetorium | 2 |
| azmon | 2 |
| spain | 2 |
| philadelphia | 2 |
| dophkah | 2 |
| rezeph | 2 |
| naharai | 2 |
| zimran | 2 |
| huldah | 2 |
| ellasar | 2 |
| methushael | 2 |
| moriah | 2 |
| beerah | 2 |
| ribai | 2 |
| jekoliah | 2 |
| syrian | 2 |
| merom | 2 |
| reubenite | 2 |
| jeuel | 2 |
| alexandria | 2 |
| shimeath | 2 |
| archippus | 2 |
| jokmeam | 2 |
| crispus | 2 |
| pinon | 2 |
| azaliah | 2 |
| hauran | 2 |
| lemuel | 2 |
| mattanah | 2 |
| mahaneh | 2 |
| sakar | 2 |
| regiment | 2 |
| giloh | 2 |
| gether | 2 |
| lebaoth | 2 |
| adummim | 2 |
| nephtoah | 2 |
| jehoaddah | 2 |
| shobak | 2 |
| nimrim | 2 |
| zereth | 2 |
| hakupha | 2 |
| dorcas | 2 |
| ahihud | 2 |
| manahathites | 2 |
| jaasiel | 2 |
| sheshak | 2 |
| jehukal | 2 |
| onesiphorus | 2 |
| hellenistic | 2 |
| shuppites | 2 |
| harashim | 2 |
| rogelim | 2 |
| misrephoth | 2 |
| arvad | 2 |
| hassenuah | 2 |
| sheerah | 2 |
| gallim | 2 |
| haggi | 2 |
| kislev | 2 |
| meunim | 2 |
| mikneiah | 2 |
| pithon | 2 |
| eliehoenai | 2 |
| bedad | 2 |
| lawgiver | 2 |
| senaah | 2 |
| hakkerem | 2 |
| leshem | 2 |
| elymas | 2 |
| harbona | 2 |
| sismai | 2 |
| jehoaddan | 2 |
| dimon | 2 |
| pergamum | 2 |
| jarha | 2 |
| gederoth | 2 |
| shepho | 2 |
| hobab | 2 |
| hephzibah | 2 |
| kasluhites | 2 |
| kehelathah | 2 |
| sheleph | 2 |
| dinhabah | 2 |
| eglath | 2 |
| abida | 2 |
| zaavan | 2 |
| sered | 2 |
| orpah | 2 |
| shophak | 2 |
| almodad | 2 |
| carmelite | 2 |
| hethlon | 2 |
| adnah | 2 |
| thebez | 2 |
| jabneel | 2 |
| alexandrian | 2 |
| kishion | 2 |
| mithkah | 2 |
| purah | 2 |
| shelishiyah | 2 |
| zophah | 2 |
| zoheth | 2 |
| mithredath | 2 |
| shamgar | 2 |
| madon | 2 |
| markaboth | 2 |
| jehonathan | 2 |
| zabdiel | 2 |
| eldaah | 2 |
| diklah | 2 |
| abimael | 2 |
| hillel | 2 |
| hammon | 2 |
| theophilus | 2 |
| hagri | 2 |
| barsabbas | 2 |
| calah | 2 |
| jehieli | 2 |
| alvah | 2 |
| shuah | 2 |
| masrekah | 2 |
| hymenaeus | 2 |
| elihud | 2 |
| jerah | 2 |
| enaim | 2 |
| abishur | 2 |
| maaziah | 2 |
| alush | 2 |
| tadmor | 2 |
| abronah | 2 |
| arbathite | 2 |
| tanhumeth | 2 |
| jahzah | 2 |
| giddalti | 2 |
| nisrok | 2 |
| hanniel | 2 |
| ithai | 2 |
| shilhi | 2 |
| shaalbim | 2 |
| massa | 2 |
| zibiah | 2 |
| eglah | 2 |
| genubath | 2 |
| matthan | 2 |
| nicolaitans | 2 |
| mibzar | 2 |
| kittites | 2 |
| meshillemoth | 2 |
| buzite | 2 |
| gittaim | 2 |
| mallothi | 2 |
| mesopotamia | 2 |
| zakkai | 2 |
| lehabites | 2 |
| pethor | 2 |
| haradah | 2 |
| mahseiah | 2 |
| hammath | 2 |
| jekameam | 2 |
| zalmonah | 2 |
| naphtuhites | 2 |
| zemarites | 2 |
| hamathites | 2 |
| kozbi | 2 |
| zetham | 2 |
| rissah | 2 |
| netophah | 2 |
| bohan | 2 |
| makirites | 2 |
| adullamite | 2 |
| medad | 2 |
| mahalath | 2 |
| hermes | 2 |
| kelub | 2 |
| adbeel | 2 |
| anathothite | 2 |
| sarid | 2 |
| smyrna | 2 |
| harodite | 2 |
| salome | 2 |
| pelusium | 2 |
| kedemah | 2 |
| punon | 2 |
| pekod | 2 |
| bered | 2 |
| luhith | 2 |
| eliahba | 2 |
| binea | 2 |
| kalkol | 2 |
| elzaphan | 2 |
| shuhamite | 2 |
| uthai | 2 |
| shepher | 2 |
| onesimus | 2 |
| barakel | 2 |
| rithmah | 2 |
| zabbai | 2 |
| homam | 2 |
| tabbaoth | 2 |
| atroth | 2 |
| mahazioth | 2 |
| hothir | 2 |
| hezronite | 2 |
| irijah | 2 |
| allon | 2 |
| appaim | 2 |
| darda | 2 |
| ananiah | 2 |
| jemuel | 2 |
| hallohesh | 2 |
| mehida | 2 |
| ahiam | 2 |
| sheva | 2 |
| leper | 2 |
| galatian | 2 |
| noadiah | 2 |
| mattathias | 2 |
| melki | 2 |
| ezekiel | 2 |
| gilonite | 2 |
| matthat | 2 |
| temanites | 2 |
| bokim | 2 |
| shuni | 2 |
| kabul | 2 |
| thaddaeus | 2 |
| beeri | 2 |
| bukkiah | 2 |
| shaaph | 2 |
| ichabod | 2 |
| nazirites | 2 |
| kalneh | 2 |
| shepham | 2 |
| tidal | 2 |
| paphos | 2 |
| cenchreae | 2 |
| besai | 2 |
| telem | 2 |
| hashmonah | 2 |
| medan | 2 |
| ingathering | 2 |
| julius | 2 |
| nisan | 2 |
| makheloth | 2 |
| hirah | 2 |
| ziphites | 2 |
| zaanannim | 2 |
| tertullus | 2 |
| ammah | 2 |
| moseroth | 2 |
| riphath | 2 |
| joshbekashah | 2 |
| joktheel | 2 |
| taberah | 2 |
| lycaonian | 2 |
| gethsemane | 2 |
| helam | 2 |
| tiberias | 2 |
| nahaliel | 2 |
| kenath | 2 |
| jochebed | 2 |
| rufus | 2 |
| shaalbonite | 2 |
| nahalal | 2 |
| jahleel | 2 |
| amramites | 2 |
| chorazin | 2 |
| areli | 2 |
| jakim | 2 |
| abital | 2 |
| karnaim | 2 |
| kuthah | 2 |
| union | 2 |
| kerethite | 1 |
| keramim | 1 |
| bethlehemite | 1 |
| reelaiah | 1 |
| perida | 1 |
| maasai | 1 |
| zadokites | 1 |
| tishbe | 1 |
| jagur | 1 |
| ashterathite | 1 |
| idumea | 1 |
| saraph | 1 |
| hereth | 1 |
| claudia | 1 |
| jaasu | 1 |
| ibnijah | 1 |
| betonim | 1 |
| nahalol | 1 |
| bethhanan | 1 |
| armageddon | 1 |
| lappidoth | 1 |
| joshah | 1 |
| ahasbai | 1 |
| ahlab | 1 |
| zuriel | 1 |
| beera | 1 |
| aphiah | 1 |
| semakiah | 1 |
| sharonite | 1 |
| hassophereth | 1 |
| jeribai | 1 |
| ishbah | 1 |
| hanokite | 1 |
| mekerathite | 1 |
| aaronic | 1 |
| hoham | 1 |
| mehir | 1 |
| zebulunite | 1 |
| silla | 1 |
| naggai | 1 |
| joanan | 1 |
| asarel | 1 |
| perezite | 1 |
| azaniah | 1 |
| artemas | 1 |
| naaran | 1 |
| heleph | 1 |
| lekah | 1 |
| shiza | 1 |
| ahzai | 1 |
| jamlech | 1 |
| shagee | 1 |
| irpeel | 1 |
| shibboleth | 1 |
| rakkon | 1 |
| hadrak | 1 |
| zephathah | 1 |
| jogli | 1 |
| shamma | 1 |
| shehariah | 1 |
| bileam | 1 |
| pisidia | 1 |
| adlai | 1 |
| tokhath | 1 |
| adadah | 1 |
| hanes | 1 |
| ashpenaz | 1 |
| hassenaah | 1 |
| raphu | 1 |
| eshan | 1 |
| sophereth | 1 |
| abdiel | 1 |
| tyranny | 1 |
| shelomi | 1 |
| nodab | 1 |
| sheal | 1 |
| fortunatus | 1 |
| shimeon | 1 |
| nibhaz | 1 |
| gaddi | 1 |
| ashurbanipal | 1 |
| gemalli | 1 |
| gibeath | 1 |
| jotbah | 1 |
| excellency | 1 |
| samos | 1 |
| jambres | 1 |
| haddah | 1 |
| sitnah | 1 |
| phygelus | 1 |
| taralah | 1 |
| metheg | 1 |
| ishma | 1 |
| mashal | 1 |
| achaicus | 1 |
| pazzez | 1 |
| kazin | 1 |
| likhi | 1 |
| amashsai | 1 |
| jahdo | 1 |
| makbenah | 1 |
| kelal | 1 |
| peullethai | 1 |
| jahzeelite | 1 |
| barhumite | 1 |
| patara | 1 |
| meraiah | 1 |
| zephath | 1 |
| gaham | 1 |
| ramathaim | 1 |
| samgar | 1 |
| lahmas | 1 |
| ephes | 1 |
| jokdeam | 1 |
| harum | 1 |
| cleopas | 1 |
| ziphron | 1 |
| hashbaddanah | 1 |
| tahtim | 1 |
| hadassah | 1 |
| clopas | 1 |
| shiloah | 1 |
| jezrahiah | 1 |
| timon | 1 |
| apollyon | 1 |
| maath | 1 |
| berak | 1 |
| biztha | 1 |
| dalphon | 1 |
| rhegium | 1 |
| ithlah | 1 |
| zorites | 1 |
| narcissus | 1 |
| syracuse | 1 |
| jaminite | 1 |
| shimeites | 1 |
| procorus | 1 |
| bethul | 1 |
| mahlites | 1 |
| hodshi | 1 |
| aloth | 1 |
| elead | 1 |
| middin | 1 |
| othni | 1 |
| cosam | 1 |
| horem | 1 |
| maralah | 1 |
| zemirah | 1 |
| shuham | 1 |
| hagabah | 1 |
| shaashgaz | 1 |
| jabneh | 1 |
| hakmonite | 1 |
| sharai | 1 |
| seorim | 1 |
| stoic | 1 |
| gibbar | 1 |
| tahkemonite | 1 |
| bozez | 1 |
| pishon | 1 |
| puthites | 1 |
| geshan | 1 |
| parah | 1 |
| amana | 1 |
| sekakah | 1 |
| anoth | 1 |
| secundus | 1 |
| arbite | 1 |
| shoham | 1 |
| zebina | 1 |
| arodite | 1 |
| arbel | 1 |
| jorah | 1 |
| arabian | 1 |
| magbish | 1 |
| karka | 1 |
| zethar | 1 |
| keziah | 1 |
| tolaite | 1 |
| cordial | 1 |
| mattattah | 1 |
| elnaam | 1 |
| rekabite | 1 |
| malachi | 1 |
| ethanim | 1 |
| kileab | 1 |
| persis | 1 |
| apphia | 1 |
| zophim | 1 |
| beulah | 1 |
| syntyche | 1 |
| sebam | 1 |
| publius | 1 |
| keluhi | 1 |
| parmenas | 1 |
| harorite | 1 |
| nebushazban | 1 |
| jeshishai | 1 |
| jashen | 1 |
| jeziel | 1 |
| bishlam | 1 |
| susim | 1 |
| eranite | 1 |
| euodia | 1 |
| jedidah | 1 |
| mizraim | 1 |
| ephai | 1 |
| igdaliah | 1 |
| aridatha | 1 |
| abdeel | 1 |
| shunite | 1 |
| mezobaite | 1 |
| wormwood | 1 |
| gidom | 1 |
| dedanites | 1 |
| mahavite | 1 |
| ophni | 1 |
| gibeonite | 1 |
| sibraim | 1 |
| bartimaeus | 1 |
| haggan | 1 |
| biziothiah | 1 |
| abiezrite | 1 |
| karkor | 1 |
| milalai | 1 |
| mahol | 1 |
| zophai | 1 |
| stachys | 1 |
| mekonah | 1 |
| sargon | 1 |
| lahmi | 1 |
| aroerite | 1 |
| kalno | 1 |
| nicanor | 1 |
| elika | 1 |
| ashvath | 1 |
| tehinnah | 1 |
| helekite | 1 |
| izziah | 1 |
| lycia | 1 |
| kisloth | 1 |
| deity | 1 |
| rabbim | 1 |
| zelzah | 1 |
| shemeber | 1 |
| berothai | 1 |
| baalis | 1 |
| nympha | 1 |
| junia | 1 |
| jahzerah | 1 |
| tahanite | 1 |
| phlegon | 1 |
| quartus | 1 |
| syrtis | 1 |
| ammoni | 1 |
| susah | 1 |
| shama | 1 |
| boanerges | 1 |
| haaraloth | 1 |
| magadan | 1 |
| athaiah | 1 |
| archelaus | 1 |
| azotus | 1 |
| hiel | 1 |
| shikkeron | 1 |
| palal | 1 |
| shemed | 1 |
| ardite | 1 |
| maonites | 1 |
| danite | 1 |
| elishaphat | 1 |
| lysanias | 1 |
| parvaim | 1 |
| imnite | 1 |
| hagaba | 1 |
| tirathites | 1 |
| dionysius | 1 |
| amasiah | 1 |
| ahian | 1 |
| tarea | 1 |
| seredite | 1 |
| pasak | 1 |
| dodavahu | 1 |
| admatha | 1 |
| hakkore | 1 |
| shiphmite | 1 |
| drusilla | 1 |
| mnason | 1 |
| shalisha | 1 |
| letushites | 1 |
| ramathite | 1 |
| geder | 1 |
| baaseiah | 1 |
| huppim | 1 |
| pisidian | 1 |
| ithrites | 1 |
| pildash | 1 |
| damaris | 1 |
| arelite | 1 |
| apelles | 1 |
| taphath | 1 |
| beeliada | 1 |
| moserah | 1 |
| jalon | 1 |
| jannai | 1 |
| blastus | 1 |
| sansannah | 1 |
| paulus | 1 |
| shumathites | 1 |
| gaddiel | 1 |
| shilshah | 1 |
| atarah | 1 |
| bethesda | 1 |
| forum | 1 |
| nakon | 1 |
| reumah | 1 |
| jarkon | 1 |
| harhaiah | 1 |
| iezer | 1 |
| tekoite | 1 |
| hoshama | 1 |
| shibah | 1 |
| muppim | 1 |
| bekorath | 1 |
| kesalon | 1 |
| puite | 1 |
| shimrith | 1 |
| tahrea | 1 |
| malkam | 1 |
| chuza | 1 |
| epenetus | 1 |
| asherites | 1 |
| nahamani | 1 |
| peresh | 1 |
| colossae | 1 |
| beginning | 1 |
| shalishah | 1 |
| josek | 1 |
| gebim | 1 |
| seirah | 1 |
| ahimoth | 1 |
| taanath | 1 |
| adami | 1 |
| herodion | 1 |
| aenon | 1 |
| shavsha | 1 |
| bimhal | 1 |
| naham | 1 |
| jorai | 1 |
| ardon | 1 |
| gaddah | 1 |
| antipas | 1 |
| helem | 1 |
| ahishahar | 1 |
| julia | 1 |
| castor | 1 |
| jaroah | 1 |
| tabbath | 1 |
| haruz | 1 |
| rephan | 1 |
| zeruah | 1 |
| aristobulus | 1 |
| shaulite | 1 |
| kitron | 1 |
| garmite | 1 |
| jahzeel | 1 |
| zenas | 1 |
| harnepher | 1 |
| hammahlekoth | 1 |
| corban | 1 |
| huzoth | 1 |
| makbannai | 1 |
| median | 1 |
| quirinius | 1 |
| zalaph | 1 |
| raddai | 1 |
| patrobas | 1 |
| heresh | 1 |
| bedan | 1 |
| titius | 1 |
| nicopolis | 1 |
| ampliatus | 1 |
| girzites | 1 |
| eshek | 1 |
| harumaph | 1 |
| tolad | 1 |
| hebraic | 1 |
| clement | 1 |
| arumah | 1 |
| palti | 1 |
| repairer | 1 |
| resen | 1 |
| amphipolis | 1 |
| bekerite | 1 |
| zephonite | 1 |
| bunah | 1 |
| jesimiel | 1 |
| siaha | 1 |
| balah | 1 |
| pilha | 1 |
| haram | 1 |
| hamonah | 1 |
| salmone | 1 |
| neiel | 1 |
| sithri | 1 |
| aiath | 1 |
| shilhim | 1 |
| adramyttium | 1 |
| elkoshite | 1 |
| anaharath | 1 |
| sepharad | 1 |
| haggiah | 1 |
| memorandum | 1 |
| gilalai | 1 |
| ahumai | 1 |
| dabbesheth | 1 |
| belial | 1 |
| aharhel | 1 |
| haahashtari | 1 |
| asherahs | 1 |
| tabrimmon | 1 |
| hareph | 1 |
| maroth | 1 |
| hazaiah | 1 |
| theudas | 1 |
| jathniel | 1 |
| ahiram | 1 |
| nebai | 1 |
| meshullemeth | 1 |
| joshaviah | 1 |
| token | 1 |
| timaeus | 1 |
| rabboni | 1 |
| jeberekiah | 1 |
| kesil | 1 |
| tilon | 1 |
| ashima | 1 |
| haggite | 1 |
| paltite | 1 |
| joahaz | 1 |
| jeshohaiah | 1 |
| janai | 1 |
| jakinite | 1 |
| hizki | 1 |
| niger | 1 |
| lasharon | 1 |
| shiphtan | 1 |
| antipatris | 1 |
| jeremai | 1 |
| olympas | 1 |
| sychar | 1 |
| puteoli | 1 |
| jannes | 1 |
| shemaah | 1 |
| emmaus | 1 |
| dalmatia | 1 |
| zebidah | 1 |
| ephphatha | 1 |
| ptolemais | 1 |
| aphekah | 1 |
| pethuel | 1 |
| mishpat | 1 |
| nekeb | 1 |
| seneh | 1 |
| rakem | 1 |
| elisheba | 1 |
| scythian | 1 |
| salim | 1 |
| aharah | 1 |
| tirhanah | 1 |
| jeatherai | 1 |
| keziz | 1 |
| japhletites | 1 |
| jemimah | 1 |
| kamon | 1 |
| kislon | 1 |
| marsena | 1 |
| elonite | 1 |
| zeboim | 1 |
| ecbatana | 1 |
| raphah | 1 |
| talitha | 1 |
| unsandaled | 1 |
| bealiah | 1 |
| ashurites | 1 |
| philologus | 1 |
| lebonah | 1 |
| eutychus | 1 |
| tiberius | 1 |
| zeredah | 1 |
| hiddai | 1 |
| nezib | 1 |
| diblaim | 1 |
| hophra | 1 |
| akeldama | 1 |
| pyrrhus | 1 |
| jegar | 1 |
| augustus | 1 |
| kesulloth | 1 |
| libnite | 1 |
| tabaliah | 1 |
| nehum | 1 |
| shion | 1 |
| neapolis | 1 |
| shimeathites | 1 |
| hakkatan | 1 |
| erite | 1 |
| shinab | 1 |
| benoth | 1 |
| sibboleth | 1 |
| jesarelah | 1 |
| idbash | 1 |
| gader | 1 |
| arieh | 1 |
| kushaiah | 1 |
| mishraites | 1 |
| mozah | 1 |
| appius | 1 |
| abitub | 1 |
| andronicus | 1 |
| pudens | 1 |
| shaphir | 1 |
| rinnah | 1 |
| bigtha | 1 |
| haeleph | 1 |
| latin | 1 |
| shashai | 1 |
| shuphamite | 1 |
| harhas | 1 |
| jubal | 1 |
| hadashah | 1 |
| epicurean | 1 |
| nehushtan | 1 |
| bilgai | 1 |
| jahdai | 1 |
| haggedolim | 1 |
| baharumite | 1 |
| hammuel | 1 |
| heshmon | 1 |
| malta | 1 |
| athak | 1 |
| joshibiah | 1 |
| northeaster | 1 |
| bidkar | 1 |
| naamite | 1 |
| hamulite | 1 |
| hermogenes | 1 |
| eshtemoh | 1 |
| dizahab | 1 |
| shallun | 1 |
| nophah | 1 |
| hathath | 1 |
| adalia | 1 |
| happizzez | 1 |
| behemoth | 1 |
| harmon | 1 |
| bithiah | 1 |
| philemon | 1 |
| sivan | 1 |
| shalman | 1 |
| shahazumah | 1 |
| naphtalites | 1 |
| ashuri | 1 |
| rakkath | 1 |
| bakuth | 1 |
| hubbah | 1 |
| kartan | 1 |
| simeonite | 1 |
| jaakobah | 1 |
| beninu | 1 |
| shuppim | 1 |
| mitylene | 1 |
| jahzeiah | 1 |
| shephuphan | 1 |
| asyncritus | 1 |
| zoheleth | 1 |
| haruphite | 1 |
| adithaim | 1 |
| nahbi | 1 |
| vophsi | 1 |
| kozeba | 1 |
| anthothijah | 1 |
| hakmoni | 1 |
| makaz | 1 |
| kenizzites | 1 |
| tryphosa | 1 |
| ahban | 1 |
| jesher | 1 |
| putiel | 1 |
| meroz | 1 |
| zethan | 1 |
| jekuthiel | 1 |
| berean | 1 |
| sabtah | 1 |
| arnan | 1 |
| ahuzzath | 1 |
| sorek | 1 |
| rohgah | 1 |
| pollux | 1 |
| sirah | 1 |
| parshandatha | 1 |
| ayyah | 1 |
| gederathite | 1 |
| meron | 1 |
| ahoah | 1 |
| sergius | 1 |
| tophel | 1 |
| bikrites | 1 |
| gizonite | 1 |
| helkai | 1 |
| shobi | 1 |
| jerioth | 1 |
| habazziniah | 1 |
| shimon | 1 |
| hadattah | 1 |
| ishhod | 1 |
| inspection | 1 |
| shechemites | 1 |
| lasea | 1 |
| siphmoth | 1 |
| tryphena | 1 |
| sabta | 1 |
| mahlite | 1 |
| iskah | 1 |
| beraiah | 1 |
| hasrah | 1 |
| restorer | 1 |
| shiphi | 1 |
| abagtha | 1 |
| shamhuth | 1 |
| hezion | 1 |
| hukkok | 1 |
| sannah | 1 |
| hermas | 1 |
| piltai | 1 |
| shittah | 1 |
| abaddon | 1 |
| makirite | 1 |
| shenazzar | 1 |
| aridai | 1 |
| sheresh | 1 |
| jered | 1 |
| mispereth | 1 |
| ithmah | 1 |
| jadon | 1 |
| hazer | 1 |
| adriatic | 1 |
| elpelet | 1 |
| lahad | 1 |
| ismakiah | 1 |
| aniam | 1 |
| harod | 1 |
| azzan | 1 |
| temeni | 1 |
| izliah | 1 |
| rakal | 1 |
| kamai | 1 |
| mizar | 1 |
| shuthelahite | 1 |
| kanneh | 1 |
| ethbaal | 1 |
| sceva | 1 |
| shiphrah | 1 |
| tizite | 1 |
| eunice | 1 |
| jorim | 1 |
| dibri | 1 |
| ramiah | 1 |
| naarai | 1 |
| kadmonites | 1 |
| kenani | 1 |
| ezbai | 1 |
| shelesh | 1 |
| shaalim | 1 |
| mithnite | 1 |
| menna | 1 |
| jedidiah | 1 |
| elmadam | 1 |
| sucathites | 1 |
| gunite | 1 |
| shimronite | 1 |
| elohe | 1 |
| abilene | 1 |
| rumah | 1 |
| horam | 1 |
| jahdiel | 1 |
| laadah | 1 |
| birzaith | 1 |
| imrah | 1 |
| rhesa | 1 |
| abana | 1 |
| dalmanutha | 1 |
| pharpar | 1 |
| hepherite | 1 |
| jeshebeab | 1 |
| kattath | 1 |
| cauda | 1 |
| iezerite | 1 |
| zibia | 1 |
| bealoth | 1 |
| helbah | 1 |
| shapham | 1 |
| izrahite | 1 |
| pelaliah | 1 |
| molid | 1 |
| uzzen | 1 |
| parnak | 1 |
| kishi | 1 |
| italian | 1 |
| asrielite | 1 |
| bariah | 1 |
| hazzelelponi | 1 |
| bamah | 1 |
| jairite | 1 |
| joelah | 1 |
| asarelah | 1 |
| hodesh | 1 |
| cainan | 1 |
| aspatha | 1 |
| arisai | 1 |
| arubboth | 1 |
| suphah | 1 |
| nekoda652 | 1 |
| kidon | 1 |
| pithom | 1 |
| beten | 1 |
| shahar | 1 |
| hammoleketh | 1 |
| kezib | 1 |
| phoebe | 1 |
| hasadiah | 1 |
| shophan | 1 |
| hattikon | 1 |
| huphamite | 1 |
| patmos | 1 |
| nicolas | 1 |
| hobah | 1 |
| tertius | 1 |
| philetus | 1 |
| eshterah | 1 |
| hashabnah | 1 |
| jorkeam | 1 |
| ashbea | 1 |
| libnites | 1 |
| gadarenes | 1 |
| baara | 1 |
| sopater | 1 |
| shaharaim | 1 |
| ethni | 1 |
| kitlish | 1 |
| pispah | 1 |
| karkas | 1 |
| traconitis | 1 |
| ephrathites | 1 |
| gibeathite | 1 |
| leummites | 1 |
| zaanan | 1 |
| hagrite | 1 |
| gittites | 1 |
| eliphal | 1 |
| rekah | 1 |
| netaim | 1 |
| zeker | 1 |
| ishvite | 1 |
| apollonia | 1 |
| gabbatha | 1 |
| nemuelite | 1 |
| chios | 1 |
| ibsam | 1 |
| ishijah | 1 |
| azariahu | 1 |
| zamzummites | 1 |
| mattatha | 1 |
| lakkum | 1 |
| jahmai | 1 |
| berothite | 1 |
| lasha | 1 |
| hizkiah | 1 |
| geuel | 1 |
| sephar | 1 |
| tartak | 1 |
| gabbai | 1 |
| laishah | 1 |
| jakan | 1 |
| josiphiah | 1 |
| hannathon | 1 |
| sahadutha | 1 |
| sakia | 1 |
| shalleketh | 1 |
| zaham | 1 |
| tebeth | 1 |
| azbuk | 1 |
| calebite | 1 |
| shechemite | 1 |
| zahar | 1 |
| kallai | 1 |
| shimeam | 1 |
| meronothite | 1 |
| gimzo | 1 |
| jezaniah | 1 |
| iturea | 1 |
| carpus | 1 |
| nehushta | 1 |
| samothrace | 1 |
| cnidus | 1 |
| neballat | 1 |
| jabal | 1 |
| porcius | 1 |
| shemidaite | 1 |
| vaizatha | 1 |
| ithnan | 1 |
| oznite | 1 |
| jehezkel | 1 |
| lehem | 1 |
| tiria | 1 |
| gederite | 1 |
| shelanite | 1 |
| maakathites | 1 |
| bedeiah | 1 |
| shebat | 1 |
| tyrannus | 1 |
| jehiah | 1 |
| huppah | 1 |
| ashbelite | 1 |
| geruth | 1 |
| mushite | 1 |
| shobek | 1 |
| aznoth | 1 |
| gibea | 1 |
| sukkites | 1 |
| ethnan | 1 |
| armoni | 1 |
| ephrathite | 1 |
| joezer | 1 |
| ishpah | 1 |
| telah | 1 |
| jehizkiah | 1 |
| linus | 1 |
| jeriel | 1 |
| gishpa | 1 |
| ashteroth | 1 |
| abiasaph | 1 |
| beriite | 1 |
| hushites | 1 |
| merathaim | 1 |
| heberite | 1 |
| resheph | 1 |
| hazzobebah | 1 |
| rizia | 1 |
| libnath | 1 |
| sheber | 1 |
| ahiramite | 1 |
| zeror | 1 |
| hammoth | 1 |
| sharar | 1 |
| jonam | 1 |
| tyrians | 1 |
| eshtaolites | 1 |
| urbanus | 1 |
| seleucia | 1 |
| achar | 1 |
| bubastis | 1 |
| idalah | 1 |
| ezrah | 1 |
| hupham | 1 |
| hushah | 1 |
| belaite | 1 |
| tammuz | 1 |
| manaen | 1 |
| meholathite | 1 |
| helbon | 1 |
| karmite | 1 |
| nedabiah | 1 |
| asiel | 1 |
| aretas | 1 |
| malchus | 1 |
| zabud | 1 |
| meshillemith | 1 |
| anammelek | 1 |
| hashubah | 1 |
| shillemite | 1 |
| athlai | 1 |
| jashubi | 1 |
| minni | 1 |
| dimonah | 1 |
| jezerite | 1 |
| maadai | 1 |
| shimrath | 1 |
| jekabzeel | 1 |
| akkad | 1 |
| phoenix | 1 |
| besodeiah | 1 |
| rimmono | 1 |
| shelanites | 1 |
| diotrephes | 1 |
| hierapolis | 1 |
| shupham | 1 |
| kilmad | 1 |
| eleadah | 1 |
| zuphite | 1 |
| ahuzzam | 1 |
| gammad | 1 |
| birsha | 1 |
| rephael | 1 |
| raamiah | 1 |
| jashubite | 1 |
| jidlaph | 1 |
| illyricum | 1 |
| mushites | 1 |
| misham | 1 |
| rhoda | 1 |
| jerahmeelites | 1 |
| hebronite | 1 |
| sapphira | 1 |
| ammizabad | 1 |
| jeruel | 1 |
| mispar | 1 |
| sethur | 1 |
| susanna | 1 |
| mikri | 1 |
| piram | 1 |
| kandake | 1 |
| zuzites | 1 |
| hazzurim | 1 |
| aziza | 1 |
| sepharvites | 1 |
| kelaiah | 1 |
| nereus | 1 |
| zererah | 1 |
| peruda | 1 |
| haroeh | 1 |
| ziddim | 1 |
| melea | 1 |
| mibhar | 1 |
| haziel | 1 |
| heliopolis | 1 |
| jaddai | 1 |
| laodiceans | 1 |
| ziphah | 1 |
| mirmah | 1 |
| judith | 1 |
| gudgodah | 1 |
| paarai | 1 |
| tahash | 1 |
| giah | 1 |
| sippai | 1 |
| hashem | 1 |
| sheth | 1 |
| atharim | 1 |
| palluite | 1 |
| semein | 1 |
| jahleelite | 1 |
| sosipater | 1 |
| malkielite | 1 |

---

## Step 3-B: 일반 단어 (재검토 필요) - 680개

고유명사 필터에 걸렸지만 실제로는 일반 어휘인 단어들입니다.
이 단어들은 단어장에 추가할지 검토가 필요합니다.

| 단어 | 빈도 |
|------|------|
| bring | 1,642 |
| like | 1,540 |
| live | 1,201 |
| tell | 1,077 |
| hear | 1,060 |
| send | 991 |
| speak | 820 |
| leave | 808 |
| ask | 800 |
| away | 776 |
| call | 772 |
| stand | 681 |
| turn | 658 |
| look | 642 |
| find | 623 |
| keep | 597 |
| anyone | 509 |
| destroy | 504 |
| long | 486 |
| kill | 466 |
| drink | 462 |
| therefore | 446 |
| listen | 439 |
| praise | 431 |
| return | 429 |
| three | 425 |
| follow | 421 |
| build | 410 |
| seven | 406 |
| bless | 401 |
| food | 386 |
| high | 382 |
| end | 360 |
| bear | 360 |
| fall | 359 |
| dead | 357 |
| break | 349 |
| side | 347 |
| almighty | 345 |
| silver | 344 |
| show | 337 |
| carry | 336 |
| young | 335 |
| serve | 330 |
| gate | 330 |
| fear | 329 |
| save | 323 |
| lead | 321 |
| family | 314 |
| surely | 309 |
| hundred | 309 |
| sit | 308 |
| cry | 307 |
| whoever | 305 |
| sovereign | 303 |
| hold | 303 |
| field | 303 |
| open | 300 |
| please | 292 |
| gather | 284 |
| wall | 278 |
| receive | 273 |
| help | 271 |
| cut | 270 |
| everyone | 269 |
| fill | 262 |
| choose | 256 |
| five | 253 |
| stay | 252 |
| rise | 251 |
| cover | 251 |
| far | 250 |
| worship | 248 |
| light | 246 |
| strike | 245 |
| jew | 241 |
| judge | 239 |
| pray | 239 |
| believe | 238 |
| hill | 237 |
| remember | 236 |
| flee | 232 |
| throw | 229 |
| morning | 226 |
| dont | 219 |
| walk | 217 |
| ten | 216 |
| today | 215 |
| honor | 213 |
| obey | 211 |
| unclean | 209 |
| sheep | 207 |
| tear | 206 |
| curse | 205 |
| presence | 204 |
| others | 203 |
| bow | 199 |
| desert | 199 |
| longer | 198 |
| attack | 195 |
| someone | 194 |
| seek | 193 |
| appoint | 193 |
| rejoice | 192 |
| mighty | 189 |
| guard | 186 |
| throne | 186 |
| east | 185 |
| whatever | 182 |
| palace | 176 |
| ruler | 176 |
| ram | 175 |
| proclaim | 175 |
| valley | 174 |
| arm | 173 |
| run | 171 |
| mount | 171 |
| sound | 170 |
| little | 170 |
| cross | 169 |
| reach | 168 |
| chief | 167 |
| shout | 167 |
| horse | 166 |
| swear | 164 |
| move | 163 |
| watch | 162 |
| sing | 161 |
| stop | 161 |
| friend | 161 |
| last | 157 |
| prepare | 156 |
| defile | 152 |
| fellow | 152 |
| joab | 150 |
| teacher | 150 |
| north | 149 |
| sun | 148 |
| prophesy | 147 |
| war | 146 |
| half | 146 |
| rock | 146 |
| rule | 146 |
| twelve | 145 |
| baal | 142 |
| sleep | 140 |
| lift | 140 |
| forgive | 139 |
| wait | 136 |
| throughout | 135 |
| lion | 135 |
| sell | 135 |
| favor | 135 |
| thirty | 133 |
| justice | 130 |
| wash | 129 |
| fool | 129 |
| festival | 128 |
| remove | 128 |
| accept | 128 |
| disaster | 128 |
| book | 128 |
| consider | 127 |
| beth | 126 |
| south | 125 |
| count | 125 |
| true | 124 |
| shepherd | 124 |
| neither | 121 |
| wild | 120 |
| witness | 120 |
| slaughter | 120 |
| lot | 118 |
| pursue | 117 |
| provide | 117 |
| salvation | 116 |
| pas | 116 |
| draw | 116 |
| forty | 115 |
| harvest | 114 |
| faithful | 114 |
| dry | 113 |
| forget | 113 |
| spring | 113 |
| none | 109 |
| buy | 109 |
| vision | 108 |
| branch | 107 |
| atonement | 107 |
| woe | 106 |
| consecrate | 103 |
| pass | 102 |
| enough | 101 |
| summon | 101 |
| boast | 98 |
| age | 96 |
| destruction | 95 |
| portion | 95 |
| west | 95 |
| seize | 94 |
| truly | 94 |
| warrior | 94 |
| cast | 93 |
| ahab | 93 |
| increase | 92 |
| terror | 90 |
| seed | 89 |
| street | 87 |
| read | 87 |
| stretch | 86 |
| desolate | 84 |
| aram | 84 |
| fine | 83 |
| instruction | 83 |
| perform | 83 |
| greater | 82 |
| eternal | 80 |
| song | 80 |
| assemble | 80 |
| governor | 79 |
| celebrate | 78 |
| jehu | 77 |
| foundation | 76 |
| star | 76 |
| indeed | 75 |
| upright | 72 |
| record | 71 |
| everlasting | 70 |
| grant | 69 |
| ill | 69 |
| beautiful | 69 |
| moon | 69 |
| wail | 68 |
| corner | 68 |
| fish | 68 |
| seventy | 68 |
| o | 67 |
| seal | 67 |
| pride | 67 |
| garden | 66 |
| sprinkle | 65 |
| offspring | 65 |
| bad | 64 |
| majesty | 64 |
| inquire | 62 |
| mankind | 61 |
| release | 59 |
| asa | 59 |
| assign | 58 |
| tomorrow | 58 |
| levi | 57 |
| root | 57 |
| amen | 57 |
| strengthen | 56 |
| pick | 56 |
| tower | 55 |
| repent | 55 |
| immediately | 54 |
| red | 54 |
| virgin | 54 |
| separate | 53 |
| mark | 52 |
| arise | 52 |
| allow | 52 |
| spare | 52 |
| crucify | 52 |
| glorious | 51 |
| complete | 51 |
| violence | 51 |
| forest | 51 |
| ben | 49 |
| worthy | 49 |
| opposite | 49 |
| withdraw | 49 |
| middle | 48 |
| tie | 46 |
| rid | 46 |
| naked | 45 |
| palm | 45 |
| wheel | 45 |
| upper | 44 |
| ahaz | 44 |
| didnt | 43 |
| gath | 42 |
| protect | 41 |
| lower | 41 |
| hurry | 41 |
| nevertheless | 40 |
| lake | 40 |
| straight | 40 |
| seir | 39 |
| otherwise | 38 |
| advance | 38 |
| salt | 38 |
| roll | 37 |
| perhaps | 36 |
| quiet | 35 |
| explain | 35 |
| moreover | 35 |
| nile | 34 |
| ancient | 34 |
| leah | 34 |
| oh | 34 |
| obed | 33 |
| isnt | 33 |
| load | 33 |
| hail | 31 |
| depart | 31 |
| collect | 30 |
| unleavened | 30 |
| wake | 29 |
| maker | 29 |
| elam | 28 |
| climb | 28 |
| hall | 28 |
| thus | 28 |
| cush | 28 |
| watchman | 27 |
| jealous | 27 |
| feed | 27 |
| pool | 26 |
| wonderful | 26 |
| suppose | 26 |
| cook | 26 |
| dedication | 25 |
| abel | 25 |
| im | 25 |
| bath | 25 |
| wont | 24 |
| holiness | 24 |
| sir | 23 |
| eleven | 23 |
| gaza | 23 |
| kish | 23 |
| refresh | 23 |
| havent | 22 |
| quarter | 22 |
| susa | 22 |
| muster | 22 |
| cain | 22 |
| jubilee | 21 |
| builder | 21 |
| zeal | 21 |
| heed | 21 |
| amon | 21 |
| shem | 20 |
| eden | 20 |
| asia | 19 |
| maintain | 19 |
| preparation | 19 |
| jackal | 19 |
| arent | 19 |
| destroyer | 19 |
| council | 18 |
| banner | 18 |
| beer | 18 |
| ner | 18 |
| omri | 17 |
| quick | 17 |
| fountain | 17 |
| elah | 17 |
| ziba | 17 |
| pardon | 17 |
| eber | 16 |
| rabbi | 16 |
| hur | 16 |
| ham | 16 |
| geba | 15 |
| imperial | 15 |
| overseer | 15 |
| dung | 15 |
| bela | 14 |
| highway | 14 |
| gog | 14 |
| saddle | 14 |
| impale | 14 |
| restrain | 14 |
| iddo | 14 |
| peor | 14 |
| majestic | 14 |
| scorpion | 14 |
| nebo | 14 |
| hor | 14 |
| jair | 14 |
| amoz | 13 |
| broad | 13 |
| arba | 12 |
| ebed | 12 |
| uzzi | 12 |
| ehud | 12 |
| lebo | 12 |
| anah | 12 |
| ezer | 12 |
| aha | 11 |
| erect | 11 |
| pretend | 11 |
| joah | 11 |
| gaal | 10 |
| fair | 10 |
| zin | 10 |
| wadi | 10 |
| zoar | 10 |
| beor | 10 |
| kir | 10 |
| shan | 10 |
| zur | 9 |
| lazy | 9 |
| intercede | 9 |
| administer | 9 |
| shua | 9 |
| skull | 9 |
| adar | 9 |
| arab | 9 |
| canal | 9 |
| enan | 9 |
| seth | 9 |
| pavement | 9 |
| gera | 9 |
| ziph | 9 |
| uri | 8 |
| defender | 8 |
| cheer | 8 |
| elon | 8 |
| dor | 8 |
| aven | 8 |
| adah | 8 |
| supper | 8 |
| advocate | 8 |
| yesterday | 8 |
| ive | 8 |
| urim | 8 |
| chisel | 8 |
| destiny | 7 |
| psalm | 7 |
| ebal | 7 |
| agag | 7 |
| anak | 7 |
| beware | 7 |
| onan | 7 |
| maon | 7 |
| tel | 7 |
| luz | 7 |
| belonging | 7 |
| azel | 7 |
| zoan | 7 |
| lair | 7 |
| oreb | 7 |
| maim | 6 |
| ahio | 6 |
| lighten | 6 |
| gedi | 6 |
| ira | 6 |
| reu | 6 |
| renounce | 6 |
| jael | 6 |
| monument | 6 |
| aviv | 6 |
| physician | 6 |
| nob | 6 |
| tola | 6 |
| shur | 6 |
| zeeb | 6 |
| range | 6 |
| elim | 6 |
| tob | 5 |
| mika | 5 |
| arah | 5 |
| ono | 5 |
| uzza | 5 |
| anna | 5 |
| etam | 5 |
| ain | 5 |
| moza | 5 |
| instructor | 5 |
| hush | 5 |
| lehi | 5 |
| sela | 5 |
| puah | 5 |
| hitch | 5 |
| potsherd | 5 |
| arad | 5 |
| meon | 5 |
| tema | 5 |
| reform | 5 |
| colonnade | 5 |
| ater | 5 |
| zuar | 5 |
| eder | 5 |
| commemorate | 5 |
| tuck | 5 |
| comforter | 5 |
| doeg | 5 |
| tou | 4 |
| legion | 4 |
| onam | 4 |
| pi | 4 |
| hallelujah | 4 |
| seba | 4 |
| adin | 4 |
| ziza | 4 |
| ishi | 4 |
| treason | 4 |
| emperor | 4 |
| ulam | 4 |
| zealot | 4 |
| cana | 4 |
| magi | 4 |
| lod | 4 |
| ah | 4 |
| guni | 4 |
| kue | 4 |
| bene | 4 |
| unni | 3 |
| oded | 3 |
| roi | 3 |
| mede | 3 |
| mene | 3 |
| igal | 3 |
| ard | 3 |
| omar | 3 |
| iye | 3 |
| omega | 3 |
| dodo | 3 |
| hen | 3 |
| bel | 3 |
| abba | 3 |
| hena | 3 |
| weve | 3 |
| christian | 3 |
| aner | 3 |
| ijon | 3 |
| treachery | 3 |
| abdi | 3 |
| soko | 3 |
| hori | 3 |
| kore | 3 |
| buz | 3 |
| zuph | 3 |
| ezem | 3 |
| akan | 2 |
| ozem | 2 |
| joha | 2 |
| uruk | 2 |
| imri | 2 |
| ge | 2 |
| pau | 2 |
| amok | 2 |
| zeus | 2 |
| aran | 2 |
| ezel | 2 |
| ziha | 2 |
| iram | 2 |
| beno | 2 |
| anab | 2 |
| amzi | 2 |
| uzal | 2 |
| eked | 2 |
| abda | 2 |
| ziv | 2 |
| ulai | 2 |
| ahi | 2 |
| emek | 2 |
| irad | 2 |
| gur | 2 |
| gob | 2 |
| hul | 2 |
| adna | 2 |
| azor | 2 |
| ohad | 2 |
| atad | 2 |
| jada | 2 |
| lud | 2 |
| gadi | 2 |
| eloi | 2 |
| evi | 2 |
| pul | 2 |
| eri | 2 |
| akim | 2 |
| seku | 1 |
| toah | 1 |
| hara | 1 |
| ebez | 1 |
| zeri | 1 |
| maaz | 1 |
| buzi | 1 |
| anan | 1 |
| elul | 1 |
| ara | 1 |
| agur | 1 |
| uzai | 1 |
| ami | 1 |
| kun | 1 |
| amal | 1 |
| zair | 1 |
| ziz | 1 |
| lois | 1 |
| beri | 1 |
| oren | 1 |
| zer | 1 |
| eker | 1 |
| myra | 1 |
| eran | 1 |
| maok | 1 |
| shoa | 1 |
| zaza | 1 |
| rosh | 1 |
| hali | 1 |
| sia | 1 |
| amad | 1 |
| anub | 1 |
| huri | 1 |
| nain | 1 |
| saph | 1 |
| jaan | 1 |
| koz | 1 |
| ilai | 1 |
| tohu | 1 |
| zia | 1 |
| beon | 1 |
| bul | 1 |
| baka | 1 |
| rei | 1 |
| enam | 1 |
| bor | 1 |
| ozni | 1 |
| jaar | 1 |
| biri | 1 |
| suph | 1 |
| heli | 1 |
| neah | 1 |
| mara | 1 |
| lael | 1 |
| izal | 1 |
| ulla | 1 |
| iyim | 1 |
| iri | 1 |
| coax | 1 |
| ehi | 1 |
| arza | 1 |
| hazo | 1 |
| aher | 1 |
| naam | 1 |
| esli | 1 |
| nod | 1 |
| esek | 1 |
| joda | 1 |
| salu | 1 |
| uel | 1 |
| maki | 1 |
| sur | 1 |
| susi | 1 |
| akko | 1 |
| kar | 1 |
| raca | 1 |
| dura | 1 |
| joed | 1 |
| zela | 1 |
| aija | 1 |
| shen | 1 |
| goah | 1 |
| maai | 1 |
| addi | 1 |
| anem | 1 |
| anim | 1 |
| suah | 1 |
| ohel | 1 |
| ibri | 1 |
| bera | 1 |
| eth | 1 |
| neri | 1 |
| iru | 1 |
| hod | 1 |
| sodi | 1 |
| imna | 1 |
| avva | 1 |
| azaz | 1 |
| leb | 1 |
| agee | 1 |
| kub | 1 |
| koa | 1 |

---

## Step 4-A: 빈도 1회 단어 - 1,589개

성경에서 단 1번만 등장하는 희귀 단어입니다.

| 단어 |
|------|
| 000silver |
| 023 |
| 034 |
| 056 |
| 067 |
| 105 |
| 108 |
| 110 |
| 119 |
| 13 |
| 133 |
| 138 |
| 139 |
| 14 |
| 148 |
| 151 |
| 156 |
| 157 |
| 160 |
| 162 |
| 17 |
| 182 |
| 186 |
| 187 |
| 188 |
| 205 |
| 207 |
| 209 |
| 212 |
| 218 |
| 222 |
| 23 |
| 232 |
| 242 |
| 26 |
| 276 |
| 280 |
| 284 |
| 288 |
| 290 |
| 307 |
| 30matching |
| 30silver |
| 318 |
| 322 |
| 323 |
| 324 |
| 328 |
| 335 |
| 34 |
| 350 |
| 37 |
| 410 |
| 420 |
| 43 |
| 44 |
| 454 |
| 468 |
| 530 |
| 56 |
| 580 |
| 595 |
| 601 |
| 623 |
| 628 |
| 648 |
| 652 |
| 655 |
| 667 |
| 67 |
| 690 |
| 721 |
| 725 |
| 745 |
| 76 |
| 777 |
| 782 |
| 807 |
| 812 |
| 815 |
| 818 |
| 822 |
| 830 |
| 832 |
| 840 |
| 845 |
| 87 |
| 895 |
| 90 |
| 905 |
| 910 |
| 912 |
| 928 |
| 945 |
| 950 |
| 956 |
| 962 |
| 969 |
| abasement |
| abnormal |
| abnormally |
| abominable |
| absolute |
| abut |
| accent |
| acceptably |
| acclamation |
| accomplice |
| accredit |
| accurately |
| ache |
| active |
| actual |
| adamah |
| addict |
| adequately |
| adhere |
| adina |
| adjourn |
| admirable |
| admire |
| adoraim |
| adore |
| adornment |
| adult |
| advisable |
| affirm |
| affix |
| afire |
| aflame |
| afoot |
| afterbirth |
| aggression |
| aggressor |
| agitate |
| agitator |
| ahiah |
| ahinadab |
| ahishar |
| ail |
| alamoth |
| albon |
| algum |
| alien |
| alight |
| allammelek |
| allegedly |
| allegory |
| alley |
| allocate |
| aloft |
| amam |
| amply |
| anani |
| animosity |
| anklet |
| annihilation |
| anniversary |
| announcement |
| annoy |
| annoyance |
| annul |
| answerable |
| anvil |
| anxiously |
| apartment |
| apostolic |
| application |
| appointment |
| appraise |
| apprehensive |
| apron |
| apt |
| aptitude |
| arbiter |
| architect |
| ardent |
| arena |
| armlet |
| aromatic |
| arraign |
| arsenal |
| artificial |
| artist |
| asnah |
| aspire |
| assassin |
| assassination |
| assessment |
| assistance |
| assuredly |
| astir |
| athenian |
| athlete |
| attacker |
| attempt |
| attendance |
| attest |
| audacity |
| author |
| authorization |
| avert |
| avvim |
| award |
| awning |
| axhead |
| babble |
| babbler |
| babel |
| backbone |
| backsliding |
| bait |
| bakbakkar |
| baldness |
| ball |
| bangle |
| banishment |
| banker |
| barb |
| barbarian |
| barber |
| basework |
| basshebeth |
| battlement |
| beak |
| beautifully |
| bedridden |
| befuddle |
| beget |
| benob |
| bequeath |
| berothah |
| beset |
| besheth |
| bestower |
| bewilderment |
| bewitch |
| binding |
| blacken |
| blacker |
| blamelessly |
| bleach |
| bloodshot |
| bloodstain |
| blurt |
| bluster |
| boar |
| boost |
| boot |
| borderland |
| boulder |
| bowshot |
| boxer |
| boyhood |
| brag |
| bramble |
| brand |
| brawl |
| breakfast |
| bribery |
| brickmaking |
| brickwork |
| bridal |
| brightly |
| brittle |
| broaden |
| broil |
| brokenness |
| brooch |
| brotherhood |
| brown |
| brushwood |
| bubble |
| buckle |
| buffet |
| bunch |
| bushel |
| byway |
| cab |
| calmness |
| cane |
| cape |
| captivate |
| carefree |
| carelessly |
| carrion |
| carving |
| cask |
| castanets |
| caulk |
| cavern |
| cemetery |
| cent |
| certify |
| chameleon |
| chaos |
| charcoal |
| chasm |
| cheaper |
| cheerfully |
| chirp |
| chloe |
| chronic |
| chronicle |
| circulate |
| citron |
| civilian |
| clang |
| clash |
| classify |
| cleave |
| clerk |
| clip |
| cloudburst |
| cloudless |
| coarse |
| coastal |
| cobweb |
| cocoon |
| coffin |
| cohort |
| colony |
| commitment |
| compact |
| comparison |
| compass |
| compensation |
| competence |
| compile |
| completeness |
| compliment |
| compose |
| compute |
| concede |
| conception |
| concession |
| conclusion |
| confection |
| confinement |
| conformity |
| confound |
| congeal |
| conjure |
| conscientious |
| consort |
| conspicuous |
| conspirator |
| constraint |
| constructive |
| consultation |
| consummate |
| container |
| contemptuous |
| contemptuously |
| contentious |
| continuously |
| controversial |
| convenient |
| convocation |
| coo |
| cor |
| corps |
| corrode |
| corrosion |
| countenance |
| counterfeit |
| courageously |
| cove |
| cowardly |
| crescens |
| crescent |
| cricket |
| crisis |
| critical |
| critically |
| criticism |
| criticize |
| crocus |
| crossing |
| cruelly |
| cruelty |
| crust |
| crutch |
| cumbersome |
| cushion |
| cutter |
| cycle |
| dam |
| damascene |
| dampness |
| dandle |
| dangerous |
| dangle |
| dannah |
| darker |
| dealer |
| dearer |
| decency |
| decently |
| deceptively |
| decimate |
| decline |
| decorative |
| deepen |
| defame |
| defer |
| deference |
| defiance |
| defilement |
| deker |
| deliberate |
| delicious |
| delta |
| deluge |
| demonstration |
| denial |
| depression |
| deputy |
| deride |
| derive |
| despoil |
| destination |
| deter |
| dethrone |
| detriment |
| deviate |
| diadem |
| diameter |
| diblah |
| dictation |
| dilean |
| dill |
| dilute |
| diminish |
| dimnah |
| directive |
| disagree |
| disagreement |
| disapprove |
| disastrous |
| discomfort |
| discontent |
| discouragement |
| discreetly |
| disdainful |
| dishonestly |
| disillusionment |
| disloyal |
| dispense |
| displace |
| displeasure |
| disputable |
| disquiet |
| disrepute |
| disrupt |
| dissolve |
| distaff |
| distill |
| distinctly |
| distract |
| distraught |
| distribution |
| divisive |
| dizziness |
| dole |
| domestic |
| donate |
| doubly |
| doubtless |
| downhearted |
| downstairs |
| downstream |
| drowsiness |
| drowsy |
| drunken |
| duly |
| dump |
| dwarf |
| dweller |
| dysentery |
| earliest |
| earlobe |
| earner |
| earnest |
| earthen |
| earthenware |
| eaves |
| ebony |
| edification |
| educate |
| effectively |
| eightieth |
| ela |
| elapse |
| elate |
| elation |
| elidad |
| elienai |
| elihoreph |
| elite |
| eltekon |
| eluzai |
| embankment |
| embarrassment |
| embed |
| embodiment |
| emerge |
| empathize |
| emphatically |
| employ |
| enact |
| encouragingly |
| encrust |
| endlessly |
| energy |
| enfold |
| enforce |
| engross |
| enhance |
| enjoyable |
| enrol |
| enrollment |
| ensure |
| entertainment |
| enthral |
| entrails |
| entwine |
| envelop |
| erase |
| erode |
| err |
| estimate |
| estrange |
| eubulus |
| evenly |
| evidently |
| exasperate |
| exceptional |
| excitement |
| exclusively |
| execution |
| executioner |
| exert |
| exhaustion |
| exodus |
| expanse |
| expectant |
| expend |
| external |
| extraordinary |
| eyebrow |
| ezrahite |
| ezri |
| fabricate |
| failing |
| fairness |
| faraway |
| farmland |
| fatally |
| faultfinder |
| favorite |
| fearfully |
| fearsome |
| feat |
| feeblest |
| fence |
| fertilize |
| festal |
| feverish |
| fewest |
| fickle |
| fieldstone |
| fiercer |
| fiercest |
| figurehead |
| filthiness |
| finality |
| financial |
| firelight |
| fitting |
| flagstaff |
| flake |
| flatten |
| flavor |
| flimsy |
| flirt |
| flogging |
| fluent |
| foolishly |
| footing |
| forage |
| forceful |
| forerunner |
| foresail |
| foresight |
| forestall |
| forewarn |
| forgo |
| fortification |
| fortunate |
| fowl |
| fragile |
| fragment |
| frankly |
| frankness |
| frantic |
| fray |
| freedman |
| frenzied |
| frequent |
| freshly |
| friction |
| fright |
| fringe |
| fro |
| frontal |
| frosty |
| frown |
| fruitless |
| fun |
| gadfly |
| galbanum |
| galley |
| gang |
| gangrene |
| garlic |
| gaudy |
| gauntness |
| gecko |
| gederothaim |
| genuineness |
| ghostlike |
| ghostly |
| gigantic |
| gird |
| gladden |
| glint |
| glisten |
| glut |
| gluttony |
| gong |
| gown |
| grandparent |
| gravedigger |
| graz |
| greave |
| grinder |
| grower |
| grudgingly |
| grumbler |
| guarantor |
| guidepost |
| gulf |
| gullible |
| gum |
| habitat |
| hack |
| hadlai |
| hagab |
| haired |
| halhul |
| hamper |
| handkerchief |
| hanging |
| hapharaim |
| happuch |
| hardest |
| hardhearted |
| hardworking |
| harlot |
| harpoon |
| hastily |
| hatchet |
| hater |
| haughtiness |
| headdress |
| headwater |
| headway |
| healthier |
| hearer |
| heartache |
| hearted |
| heartfelt |
| heartless |
| heavenward |
| heresy |
| hesitation |
| highborn |
| highlight |
| hilen |
| hindrance |
| hint |
| historic |
| hoe |
| holiday |
| holiest |
| homeless |
| homosexuality |
| honestly |
| hoot |
| hopeless |
| hotheaded |
| hotly |
| hotter |
| hub |
| huddle |
| hug |
| hukok |
| hump |
| humtah |
| hunchback |
| hundredfold |
| hundredth |
| hurai |
| hurricane |
| hurriedly |
| hurtle |
| hypocritical |
| ibex |
| ibis |
| ibneiah |
| icy |
| idleness |
| idler |
| illegal |
| illicit |
| illusion |
| illustration |
| immeasurably |
| immediate |
| impartial |
| implore |
| imply |
| importance |
| impoverish |
| improper |
| improvise |
| incapable |
| inclusion |
| incomparable |
| incomparably |
| incomprehensible |
| incredible |
| indebtedness |
| indecisive |
| indescribable |
| indestructible |
| indictment |
| indignantly |
| indispensable |
| individually |
| ineffective |
| infamous |
| infancy |
| infiltrate |
| infirm |
| inflammation |
| influential |
| initiative |
| inkling |
| inlay |
| inn |
| innkeeper |
| innocently |
| innumerable |
| inquiry |
| insatiable |
| insistently |
| instance |
| insurrectionist |
| intact |
| intentional |
| intercessor |
| intermittent |
| interrupt |
| interval |
| introduction |
| inventory |
| invest |
| invitation |
| iphdeiah |
| irrational |
| irreligious |
| irresistible |
| irreverent |
| irrevocable |
| irrigate |
| irritate |
| ishbi |
| ishmerai |
| ishpan |
| izri |
| jaareshiah |
| jag |
| jakeh |
| janim |
| jaziz |
| jealously |
| jehud |
| jeuz |
| jingle |
| joist |
| jokim |
| jolt |
| josheb |
| joyous |
| jude |
| junction |
| jurisdiction |
| jushab |
| kabbon |
| kain |
| karshena |
| katydid |
| keen |
| kephar |
| keren |
| kesed |
| kibzaim |
| kinah |
| kindest |
| kindhearted |
| kitchen |
| knot |
| ko |
| koum |
| lag |
| lane |
| lantern |
| latch |
| latest |
| latrine |
| lax |
| leak |
| leash |
| lebana |
| lebanah |
| leech |
| leek |
| legalize |
| legitimate |
| lengthwise |
| lethek |
| libation |
| liberal |
| liberally |
| liberate |
| liberty |
| license |
| likely |
| limber |
| limestone |
| limitation |
| listener |
| locality |
| location |
| loftiness |
| loincloth |
| looter |
| lop |
| louse |
| lowborn |
| lucrative |
| lukewarm |
| lumber |
| lump |
| luncheon |
| luster |
| lusty |
| luxurious |
| lydian |
| maarath |
| madmenah |
| magnificence |
| magnify |
| magpiash |
| mainstay |
| major |
| maknadebai |
| malkiram |
| mallow |
| management |
| mane |
| manifestation |
| manifold |
| map |
| maraud |
| mare |
| maritime |
| martyr |
| mash |
| mask |
| massacre |
| massive |
| mastery |
| matri |
| maturity |
| maxim |
| mealtime |
| meddler |
| meekly |
| meeting |
| mehuman |
| melatiah |
| melodious |
| melody |
| melon |
| memorable |
| menstrual |
| mercenary |
| mercilessly |
| meronoth |
| merriment |
| merrymaker |
| mesh |
| meshobab |
| mete |
| mightily |
| migration |
| millet |
| mindset |
| minus |
| miraculously |
| mirth |
| mischief |
| misdemeanor |
| mishmannah |
| misunderstand |
| modestly |
| modesty |
| moisten |
| mole |
| molest |
| momentary |
| moneylender |
| mongrel |
| monitor |
| monopoly |
| moral |
| mortally |
| mortgage |
| mosaic |
| mountaintop |
| mounting |
| mournful |
| mournfully |
| movement |
| mulberry |
| multicolored |
| mumble |
| murderous |
| mutilator |
| mutually |
| myriad |
| naive |
| nameless |
| narrower |
| national |
| naught |
| navel |
| nearer |
| nearsighted |
| nectar |
| neighings |
| nestle |
| nettle |
| newly |
| nibshan |
| noblest |
| nocturnal |
| nohah |
| nominate |
| non |
| normally |
| northward |
| northwest |
| nourishment |
| numberless |
| nurture |
| obil |
| oblivion |
| obscenity |
| observer |
| occupant |
| odor |
| officiate |
| offset |
| offshoot |
| ofziha |
| omers |
| omit |
| oneself |
| oni |
| onion |
| onycha |
| ooze |
| oracle |
| ordeal |
| originate |
| oust |
| outbreak |
| outcast |
| outdated |
| outdoor |
| outlet |
| outline |
| outpouring |
| outrage |
| outrageously |
| outspread |
| overawe |
| overbear |
| overcast |
| overfed |
| overhead |
| overrighteous |
| oversight |
| overstep |
| overwicked |
| overwise |
| ownership |
| oxgoad |
| pact |
| pad |
| pamper |
| paneah |
| paper |
| parade |
| parchment |
| parmashta |
| parsin |
| parthian |
| partial |
| participant |
| partition |
| paruah |
| passer |
| passionate |
| pastor |
| pavilion |
| peaceable |
| peacetime |
| peck |
| pedahel |
| peddle |
| pedestal |
| pendant |
| penitent |
| per |
| percent |
| peres |
| perfecter |
| performance |
| perjury |
| perpetuate |
| perplexity |
| persistence |
| perspire |
| persuasion |
| persuasively |
| pertain |
| perverseness |
| pest |
| pestle |
| pet |
| phantom |
| philippian |
| philosophy |
| phylactery |
| pint |
| piper |
| pistachio |
| pitiful |
| pittance |
| planter |
| pleasantness |
| plentifully |
| pocket |
| poisonous |
| populace |
| population |
| poratha |
| porch |
| porphyry |
| portent |
| pose |
| potent |
| poultry |
| practically |
| precinct |
| preeminent |
| preference |
| prematurely |
| presentable |
| preside |
| presume |
| presumptuously |
| pretension |
| prevalent |
| priceless |
| princely |
| princess |
| principal |
| prior |
| privilege |
| proceeding |
| prod |
| prof |
| prone |
| properly |
| prophetess |
| protective |
| providence |
| provocation |
| puberty |
| purest |
| purifier |
| puzzle |
| qualm |
| rabbith |
| rail |
| rainstorm |
| rapid |
| rarely |
| rate |
| ratify |
| rave |
| ravish |
| rawboned |
| reassign |
| rebirth |
| recent |
| reception |
| recommend |
| recommendation |
| reconsecrate |
| rededicate |
| redeemable |
| reek |
| reentered |
| reestablish |
| reflection |
| refund |
| refusal |
| regardless |
| registration |
| regroup |
| regulate |
| reimburse |
| reinforcement |
| rejection |
| rejoin |
| relentless |
| relish |
| reluctantly |
| remainder |
| remeth |
| remorse |
| renegade |
| reopen |
| repayment |
| rephah |
| replant |
| replica |
| repoint |
| representation |
| reprove |
| resentful |
| resolute |
| resolutely |
| resource |
| respectable |
| respectful |
| respite |
| retaliate |
| retire |
| retrieve |
| review |
| ribbon |
| richer |
| rightfully |
| rigid |
| ringleader |
| rioter |
| rivalry |
| roe |
| roebuck |
| roost |
| roundabout |
| rous |
| rove |
| royalty |
| rue |
| rural |
| ruse |
| sachet |
| sadden |
| sadness |
| safeguard |
| saffron |
| sag |
| sage |
| salami |
| sallai |
| salve |
| sandaled |
| sandy |
| sapphire |
| sarsekim |
| scab |
| scarcer |
| scarecrow |
| scene |
| schemer |
| scornfully |
| scour |
| scrape |
| scrawny |
| scrub |
| sculpture |
| seafarer |
| seamless |
| seaweed |
| seclusion |
| seedling |
| seedtime |
| senior |
| sensitivity |
| sensuality |
| sentry |
| seriousness |
| servitude |
| sevenfold |
| sever |
| shaalabbin |
| shaggy |
| shamelessly |
| shammoth |
| shamsherai |
| sharer |
| sharper |
| sharuhen |
| sheathe |
| sheepshearers |
| sheepskin |
| sheer |
| sheminith |
| shemuel |
| shiftless |
| shigionoth |
| shimmer |
| shisha |
| shitrai |
| shorelands |
| shorn |
| shortcoming |
| shorter |
| shrub |
| shuhah |
| shuttle |
| shy |
| sickbed |
| sidewall |
| sift |
| sightless |
| signpost |
| silk |
| sinfulness |
| singleness |
| sistrums |
| sketch |
| skim |
| skimp |
| skink |
| slack |
| slanderous |
| slanderously |
| sleeper |
| sleepless |
| sleepy |
| sleet |
| slew |
| slightest |
| slime |
| slimy |
| slowly |
| slowness |
| slug |
| slump |
| slur |
| sly |
| smoother |
| smoothly |
| sneeze |
| snout |
| society |
| soften |
| somber |
| somewhat |
| southernmost |
| southwest |
| spearhead |
| spearmen |
| specific |
| speculation |
| spindle |
| splint |
| spoke |
| spokesman |
| spout |
| sprig |
| springtime |
| squad |
| stability |
| stammer |
| standstill |
| stargazer |
| stead |
| steadfastly |
| steer |
| stimulate |
| stinger |
| stingy |
| stinkweed |
| stool |
| straggler |
| strategy |
| strenuously |
| stress |
| strictest |
| stripe |
| strum |
| stub |
| stud |
| stunt |
| stupidity |
| sturdiest |
| sturdy |
| submissive |
| subordinate |
| substance |
| subtract |
| subvert |
| successfully |
| suck |
| suckle |
| sue |
| suggestion |
| suit |
| sulk |
| sundown |
| superstition |
| supposedly |
| suppress |
| supremacy |
| surf |
| surly |
| surmount |
| surpassingly |
| surplus |
| suspend |
| suspicion |
| swampland |
| sweeping |
| swelter |
| swerve |
| swimmer |
| symbolic |
| sympathetic |
| sympathize |
| tackle |
| tact |
| tale |
| tapestry |
| tasteless |
| tattoo |
| tavern |
| telaim |
| tentmaker |
| terrorist |
| terrorize |
| tester |
| testing |
| thaw |
| thirtieth |
| thoughtlessly |
| throb |
| throe |
| thundercloud |
| tiara |
| tidings |
| tight |
| tightfisted |
| tile |
| tilt |
| timely |
| timnite |
| tinder |
| title |
| tombstone |
| tone |
| tow |
| tragedy |
| tranquillity |
| transcend |
| transparent |
| transplant |
| transport |
| tremendous |
| tress |
| tribulation |
| trickle |
| trifle |
| trip |
| triumphant |
| troubler |
| troublesome |
| trouser |
| trudge |
| trustee |
| trustfully |
| truthfully |
| truthfulness |
| tube |
| turbulent |
| tusk |
| twinkle |
| tyrannical |
| ummah |
| unafraid |
| unapproachable |
| unashamed |
| unavenged |
| unbind |
| unblemished |
| unborn |
| unceasingly |
| uncertain |
| unchangeable |
| unchanging |
| unchecked |
| unclothe |
| unconcerned |
| undeniable |
| undependable |
| undermine |
| underside |
| undeserved |
| undesirable |
| undetected |
| undignified |
| undisciplined |
| undoubtedly |
| unduly |
| undying |
| uneaten |
| unexpected |
| unexpectedly |
| unfading |
| unfair |
| unfamiliar |
| unfanned |
| unfavorable |
| unfeeling |
| unfilled |
| unfit |
| unforgiving |
| unformed |
| unfriendly |
| unfulfilled |
| unfurl |
| unimpressive |
| uninhabited |
| unintentional |
| unjustly |
| unlock |
| unloved |
| unmarked |
| unmercifully |
| unmindful |
| unnatural |
| unoccupied |
| unprepared |
| unpresentable |
| unprincipled |
| unreasonable |
| unreasoning |
| unrelenting |
| unrepentant |
| unripe |
| unsatisfied |
| unschooled |
| unsharpened |
| unsheathe |
| unstopped |
| unstring |
| unsuccessful |
| unsuitable |
| unsuited |
| unswerving |
| unswervingly |
| unthinkable |
| untiring |
| unto |
| untrained |
| untraveled |
| untrue |
| unused |
| unveil |
| unwary |
| unweighed |
| unwholesome |
| unwittingly |
| upholster |
| uprising |
| upstream |
| usher |
| uzzia |
| valiantly |
| vaniah |
| vapor |
| vary |
| vaunt |
| vehemently |
| vestment |
| veteran |
| viciously |
| victoriously |
| viewpoint |
| vilest |
| vintage |
| virtue |
| visitor |
| voluntary |
| vote |
| vouch |
| vulgar |
| wafer |
| wane |
| wanton |
| warrant |
| wart |
| washerman |
| washing |
| waterfall |
| wavy |
| waylay |
| weakest |
| wearisome |
| weasel |
| weather |
| weightier |
| weighty |
| weld |
| welt |
| whir |
| whirl |
| wholesome |
| widen |
| wilder |
| willfully |
| wily |
| wingspan |
| wisest |
| wit |
| witless |
| wonderfully |
| woo |
| wooded |
| woodpile |
| woodsman |
| woodwork |
| wordless |
| workman |
| worthwhile |
| wreak |
| wretch |
| wrinkle |
| writer |
| yard |
| yearling |
| yell |
| youll |
| youthful |
| zaphenath |
| zealously |
| zelah |
| zenan |
| zior |

---

## Step 4-B: 숫자 - 105개

숫자로만 이루어진 항목입니다.

| 단어 | 빈도 |
|------|------|
| 000 | 96 |
| 12 | 37 |
| 500 | 29 |
| 1 | 26 |
| 200 | 15 |
| 25 | 15 |
| 400 | 14 |
| 2 | 14 |
| 24 | 14 |
| 600 | 14 |
| 100 | 11 |
| 4 | 10 |
| 250 | 10 |
| 10 | 9 |
| 3 | 8 |
| 20 | 7 |
| 32 | 7 |
| 70 | 7 |
| 300 | 7 |
| 120 | 7 |
| 22 | 6 |
| 40 | 5 |
| 7 | 5 |
| 700 | 5 |
| 30 | 5 |
| 42 | 5 |
| 74 | 4 |
| 45 | 4 |
| 550 | 4 |
| 6 | 4 |
| 128 | 4 |
| 430 | 4 |
| 144 | 4 |
| 760 | 4 |
| 5 | 4 |
| 18 | 4 |
| 337 | 4 |
| 254 | 4 |
| 80 | 4 |
| 666 | 4 |
| 50 | 4 |
| 800 | 4 |
| 16 | 3 |
| 650 | 3 |
| 730 | 3 |
| 172 | 3 |
| 245 | 3 |
| 52 | 3 |
| 127 | 3 |
| 36 | 3 |
| 603 | 3 |
| 53 | 3 |
| 35 | 3 |
| 775 | 3 |
| 61 | 3 |
| 29 | 3 |
| 112 | 3 |
| 62 | 3 |
| 57 | 2 |
| 8 | 2 |
| 052 | 2 |
| 247 | 2 |
| 150 | 2 |
| 621 | 2 |
| 130 | 2 |
| 137 | 2 |
| 60 | 2 |
| 750 | 2 |
| 320 | 2 |
| 736 | 2 |
| 930 | 2 |
| 72 | 2 |
| 28 | 2 |
| 180 | 2 |
| 260 | 2 |
| 372 | 2 |
| 630 | 2 |
| 720 | 2 |
| 223 | 2 |
| 220 | 2 |
| 122 | 2 |
| 365 | 2 |
| 54 | 2 |
| 450 | 2 |
| 345 | 2 |
| 153 | 2 |
| 64 | 2 |
| 65 | 2 |
| 390 | 2 |
| 743 | 2 |
| 41 | 2 |
| 46 | 2 |
| 273 | 2 |
| 392 | 2 |
| 95 | 2 |
| 403 | 2 |
| 017 | 2 |
| 360 | 2 |
| 59 | 2 |
| 123 | 2 |
| 98 | 2 |
| 435 | 2 |
| 973 | 2 |
| 675 | 2 |
| 642 | 2 |
