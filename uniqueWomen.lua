local allFacesIds = {
    "0", "27", "51", "240", "246", "250", "330", "388", "524", "570", "942", "1025", "1040", "1041", "1067", "1075", "1088", "1109", "1114", "1116", "1179", "1183", "1201", "1256", "1397", "1419", "1605", "1620", "1625", "1668", "1845", "2147", "3622", "3647", "4000", "4202", "4231", "4833", "5003", "5419", "5471", "5479", "5571", "5589", "5661", "5673", "5680", "5984", "6235", "6975", "7289", "7512", "7518", "7743", "7763", "7826", "7854", "8213", "8385", "8885", "9676", "10264", "10535", "11141", "13038", "13128", "13383", "13743", "15723", "16619", "20289", "20801", "23174", "24630", "25924", "26520", "26521", "26537", "26538", "26539", "26540", "26541", "26542", "26543", "26544", "26545", "26546", "26547", "26551", "26552", "26553", "26555", "26594", "26597", "26598", "26599", "26600", "26601", "26602", "26621", "26626", "26635", "26636", "26638", "26639", "26640", "26641", "26642", "26643", "26644", "26645", "26646", "26647", "26648", "26650", "26651", "26669", "26670", "26688", "26689", "26690", "26691", "26692", "26693", "26694", "26695", "26697", "26709", "27000", "27002", "27004", "27005", "27008", "27017", "27018", "27028", "27029", "27030", "27031", "27032", "27033", "27034", "27035", "27036", "27037", "27050", "27051", "27067", "27068", "27070", "27071", "27072", "27073", "27074", "27075", "27076", "27077", "27078", "27079", "27080", "27081", "27082", "27083", "27084", "27085", "27086", "27087", "27088", "27089", "27090", "27091", "27092", "27093", "27094", "27095", "27096", "27099", "27103", "27106", "27108", "27109", "27110", "27111", "27112", "27113", "27115", "27262", "27263", "28130", "31432", "34079", "37576", "39943", "40007", "40016", "40022", "40030", "40031", "40032", "40033", "40034", "40035", "40036", "40037", "40038", "40039", "40040", "40041", "40042", "40043", "40044", "40045", "40046", "40047", "40048", "40049", "40050", "40051", "40052", "40053", "40054", "40055", "40056", "40057", "40058", "40059", "40060", "40061", "40062", "40063", "40064", "40065", "40066", "40067", "40068", "40069", "40070", "40071", "40072", "40073", "40074", "40075", "40076", "40077", "40078", "40079", "40080", "40081", "40082", "40083", "40084", "40085", "40086", "40087", "40088", "40089", "40103", "40104", "40105", "40109", "40110", "40115", "40117", "40126", "40127", "40130", "40133", "40135", "40136", "40137", "40400", "40401", "40402", "40405", "40410", "40411", "40412", "40413", "40414", "40417", "40418", "40419", "40420", "40422", "40432", "40433", "40434", "40438", "40442", "40446", "40449", "40450", "40453", "40455", "40456", "40458", "40459", "40750", "40751", "40752", "40753", "40755", "40756", "40757", "40758", "40759", "40760", "40761", "40766", "40781", "40790", "40800", "40801", "40898", "40934", "40950", "40951", "40952", "40954", "40955", "40956", "40957", "40958", "40959", "40960", "40961", "41236", "44897", "45119", "45186", "45197", "45490", "45661", "45674", "48940", "49000", "49072", "49369", "50752", "51257", "51404", "51412", "51539", "52241", "52326", "53914", "54033", "54050", "104389", "107715", "108061", "120274", "120533", "121939", "121944", "135043", "135587", "135804", "138412", "138449", "138956", "139062", "139068", "139313", "140233", "140293", "140601", "142707", "142754", "143076", "143745", "146296", "146439", "146536", "146748", "146758", "146777", "146947", "146952", "150418", "150516", "150527", "150724", "151508", "152554", "152729", "152908", "152996", "155355", "155862", "155885", "155887", "155897", "155976", "156320", "156353", "156519", "156616", "157481", "157665", "157703", "157804", "158023", "158133", "158625", "158626", "158810", "159145", "159261", "160766", "161840", "162347", "162835", "162895", "162993", "163050", "163264", "163587", "163600", "163705", "163761", "164240", "164459", "164505", "164529", "164769", "164835", "164859", "165153", "165191", "165517", "165889", "166074", "166124", "166149", "166676", "166844", "166847", "166906", "167134", "167135", "167198", "167397", "167425", "167495", "167664", "167665", "167680", "167931", "167948", "168435", "168542", "168651", "168886", "169078", "169216", "169416", "169588", "169595", "169600", "169697", "169705", "169706", "169708", "169792", "169808", "169894", "170008", "170084", "170368", "170597", "170797", "171018", "171579", "171791", "171831", "171877", "171897", "171972", "172143", "172203", "172522", "172553", "172723", "172862", "172871", "172904", "172953", "173030", "173210", "173426", "173432", "173521", "173530", "173533", "173546", "173608", "173673", "173731", "173818", "173859", "173909", "174543", "175895", "175943", "176048", "176062", "176237", "176285", "176348", "176550", "176571", "176580", "176600", "176635", "176733", "176841", "176930", "176944", "177003", "177273", "177358", "177388", "177413", "177448", "177569", "177644", "177683", "177922", "178005", "178031", "178086", "178091", "178213", "178224", "178250", "178287", "178509", "178518", "178562", "178566", "178603", "178609", "179516", "179527", "179546", "179547", "179551", "179605", "179613", "179645", "179746", "179783", "179813", "179847", "180175", "180206", "180216", "180283", "180706", "180739", "180818", "180819", "180930", "181098", "181291", "181318", "181458", "181820", "182002", "182168", "182493", "182521", "182941", "182945", "183108", "183125", "183129", "183130", "183256", "183277", "183280", "183285", "183288", "183339", "183394", "183422", "183512", "183518", "183540", "183546", "183549", "183556", "183569", "183574", "183580", "183632", "183666", "183711", "183714", "183774", "183795", "183855", "183895", "183898", "183899", "183907", "183940", "184087", "184111", "184134", "184144", "184200", "184274", "184344", "184392", "184432", "184469", "184472", "184477", "184501", "184575", "184624", "184630", "184716", "184749", "184941", "185010", "185068", "185122", "185181", "185195", "185221", "185239", "185349", "185422", "185427", "186115", "186116", "186117", "186130", "186139", "186143", "186146", "186148", "186153", "186156", "186158", "186190", "186197", "186200", "186345", "186351", "186385", "186392", "186395", "186521", "186537", "186561", "186569", "186578", "186595", "186598", "186627", "186672", "186674", "186680", "186695", "186715", "186783", "186801", "186905", "186942", "187043", "187072", "187924", "187961", "188038", "188135", "188152", "188154", "188166", "188168", "188253", "188271", "188337", "188350", "188377", "188545", "188567", "188770", "188836", "188879", "188942", "188943", "188955", "188988", "189059", "189060", "189084", "189148", "189156", "189165", "189177", "189234", "189242", "189250", "189251", "189271", "189280", "189303", "189324", "189332", "189357", "189358", "189388", "189390", "189403", "189410", "189433", "189446", "189456", "189462", "189505", "189506", "189509", "189511", "189513", "189514", "189560", "189575", "189576", "189596", "189615", "189680", "189690", "189709", "189712", "189725", "189805", "189860", "189881", "190044", "190045", "190046", "190048", "190049", "190053", "190059", "190149", "190156", "190223", "190243", "190264", "190286", "190324", "190362", "190430", "190456", "190460", "190520", "190531", "190535", "190547", "190549", "190557", "190560", "190569", "190584", "190666", "190671", "190717", "190720", "190738", "190765", "190780", "190782", "190813", "190815", "190824", "190871", "190885", "190919", "190941", "191043", "191053", "191076", "191173", "191180", "191189", "191202", "191210", "191269", "191488", "191565", "191628", "191648", "191655", "191694", "191695", "191740", "191972", "191980", "192119", "192123", "192129", "192181", "192227", "192318", "192319", "192362", "192366", "192387", "192445", "192448", "192476", "192492", "192505", "192546", "192557", "192563", "192565", "192567", "192622", "192629", "192638", "192641", "192658", "192667", "192678", "192679", "192715", "192725", "192789", "192838", "192883", "192955", "192984", "192985", "192991", "193011", "193041", "193061", "193080", "193082", "193098", "193105", "193116", "193141", "193165", "193171", "193185", "193186", "193278", "193283", "193301", "193331", "193338", "193348", "193352", "193361", "193408", "193440", "193469", "193474", "193476", "193504", "193561", "193584", "193698", "193747", "193849", "193881", "193910", "193942", "194017", "194022", "194146", "194149", "194150", "194163", "194201", "194222", "194229", "194319", "194333", "194334", "194359", "194404", "194644", "194665", "194761", "194765", "194794", "194806", "194845", "194879", "194904", "194911", "194932", "194957", "194958", "194964", "194996", "195033", "195037", "195038", "195086", "195093", "195202", "195361", "195363", "195365", "195479", "195586", "195671", "195859", "195864", "195912", "196069", "196318", "196978", "197031", "197061", "197083", "197225", "197445", "197655", "197716", "197756", "197774", "197837", "197891", "197948", "198009", "198031", "198032", "198077", "198113", "198118", "198141", "198150", "198164", "198176", "198190", "198200", "198219", "198261", "198288", "198329", "198331", "198352", "198368", "198489", "198614", "198641", "198683", "198706", "198715", "198717", "198719", "198784", "198817", "198861", "198904", "198946", "198950", "198951", "198970", "199005", "199042", "199069", "199101", "199110", "199131", "199189", "199266", "199282", "199304", "199353", "199354", "199383", "199422", "199434", "199439", "199451", "199482", "199487", "199503", "199550", "199556", "199562", "199564", "199575", "199576", "199577", "199580", "199602", "199633", "199652", "199667", "199669", "199715", "199761", "199767", "199779", "199812", "199823", "199829", "199833", "199897", "199914", "199915", "199952", "199986", "200054", "200104", "200145", "200159", "200212", "200215", "200260", "200309", "200316", "200318", "200389", "200408", "200429", "200454", "200458", "200463", "200478", "200519", "200521", "200529", "200536", "200601", "200607", "200610", "200641", "200647", "200700", "200724", "200741", "200746", "200752", "200758", "200759", "200765", "200778", "200807", "200841", "200855", "200888", "200949", "201024", "201093", "201095", "201118", "201143", "201153", "201155", "201208", "201262", "201290", "201305", "201368", "201377", "201399", "201400", "201403", "201417", "201447", "201455", "201491", "201505", "201509", "201510", "201514", "201519", "201535", "201818", "201858", "201860", "201862", "201869", "201873", "201884", "201887", "201895", "201911", "201942", "201953", "201955", "201982", "201988", "201995", "202017", "202048", "202052", "202073", "202077", "202078", "202088", "202107", "202126", "202135", "202151", "202166", "202170", "202201", "202223", "202231", "202282", "202316", "202325", "202335", "202371", "202428", "202429", "202445", "202465", "202477", "202515", "202556", "202562", "202648", "202652", "202685", "202686", "202695", "202697", "202750", "202789", "202811", "202849", "202851", "202855", "202857", "202884", "202896", "202935", "202940", "203002", "203030", "203042", "203067", "203106", "203263", "203265", "203280", "203299", "203331", "203362", "203376", "203483", "203485", "203486", "203487", "203502", "203505", "203528", "203551", "203570", "203574", "203590", "203605", "203725", "203747", "203783", "203796", "203841", "203890", "203895", "203910", "203965", "204024", "204077", "204136", "204163", "204193", "204215", "204246", "204307", "204311", "204355", "204438", "204464", "204472", "204485", "204497", "204499", "204523", "204525", "204529", "204538", "204539", "204542", "204638", "204639", "204677", "204709", "204713", "204738", "204760", "204838", "204846", "204847", "204923", "204935", "204936", "204963", "205069", "205070", "205175", "205186", "205192", "205193", "205212", "205346", "205351", "205360", "205361", "205362", "205431", "205452", "205498", "205566", "205569", "205590", "205600", "205601", "205670", "205693", "205878", "205895", "205897", "205923", "205941", "205943", "205976", "205985", "205988", "205989", "205990", "205995", "206003", "206006", "206058", "206075", "206083", "206085", "206086", "206113", "206115", "206152", "206198", "206222", "206263", "206304", "206306", "206463", "206467", "206511", "206516", "206517", "206518", "206534", "206538", "206545", "206549", "206562", "206585", "206590", "206591", "206594", "206626", "206631", "206652", "206654", "206662", "207410", "207421", "207431", "207439", "207441", "207465", "207471", "207494", "207557", "207566", "207599", "207616", "207645", "207650", "207664", "207715", "207725", "207732", "207783", "207790", "207791", "207807", "207835", "207858", "207862", "207863", "207865", "207877", "207894", "207920", "207948", "207993", "207998", "208001", "208093", "208120", "208128", "208135", "208141", "208268", "208295", "208330", "208333", "208334", "208335", "208375", "208418", "208421", "208448", "208450", "208451", "208461", "208498", "208520", "208574", "208596", "208618", "208620", "208621", "208622", "208668", "208670", "208722", "208830", "208892", "208916", "208920", "208949", "209281", "209289", "209297", "209331", "209449", "209499", "209532", "209620", "209658", "209660", "209669", "209675", "209744", "209761", "209818", "209846", "209852", "209889", "209960", "209981", "209989", "209997", "210007", "210008", "210035", "210047", "210214", "210243", "210257", "210324", "210372", "210389", "210411", "210413", "210423", "210455", "210475", "210514", "210602", "210603", "210617", "210635", "210648", "210665", "210679", "210719", "210723", "210724", "210736", "210761", "210828", "210881", "210896", "210897", "210930", "210935", "210950", "210972", "210985", "211017", "211101", "211110", "211117", "211119", "211147", "211241", "211256", "211269", "211300", "211320", "211368", "211381", "211385", "211513", "211514", "211522", "211527", "211575", "211591", "211688", "211738", "211748", "211784", "211818", "211856", "211862", "211872", "211879", "211899", "211907", "211990", "211999", "212096", "212118", "212125", "212150", "212151", "212183", "212187", "212188", "212190", "212194", "212196", "212198", "212207", "212212", "212214", "212218", "212228", "212240", "212242", "212245", "212249", "212267", "212269", "212273", "212300", "212404", "212419", "212442", "212462", "212476", "212478", "212491", "212493", "212501", "212592", "212602", "212607", "212622", "212626", "212678", "212710", "212715", "212722", "212755", "212772", "212782", "212811", "212814", "212831", "212883", "212933", "212977", "213010", "213017", "213051", "213063", "213092", "213134", "213135", "213209", "213296", "213331", "213345", "213407", "213414", "213418", "213428", "213439", "213536", "213565", "213591", "213619", "213620", "213642", "213648", "213655", "213661", "213665", "213666", "213686", "213692", "213694", "213697", "213699", "213750", "213777", "213905", "213937", "213955", "213956", "213991", "214026", "214047", "214096", "214098", "214100", "214267", "214354", "214622", "214639", "214649", "214718", "214770", "214781", "214944", "214947", "214971", "214997", "215061", "215079", "215083", "215107", "215135", "215178", "215211", "215213", "215247", "215270", "215316", "215330", "215333", "215353", "215399", "215417", "215441", "215502", "215556", "215565", "215568", "215590", "215616", "215639", "215651", "215698", "215716", "215758", "215785", "215798", "215818", "215871", "215914", "216003", "216150", "216158", "216189", "216194", "216201", "216247", "216258", "216266", "216267", "216268", "216282", "216325", "216346", "216352", "216354", "216380", "216381", "216388", "216393", "216433", "216435", "216447", "216451", "216460", "216466", "216467", "216475", "216483", "216497", "216547", "216549", "216594", "216643", "216699", "216749", "216774", "216791", "216939", "217036", "217606", "217648", "217699", "217714", "217845", "218208", "218339", "218341", "218359", "218659", "218660", "218667", "218731", "218746", "219391", "219536", "219571", "219652", "219680", "219681", "219683", "219709", "219732", "219754", "219777", "219809", "219841", "219932", "219953", "220018", "220029", "220031", "220085", "220093", "220132", "220165", "220182", "220196", "220197", "220209", "220253", "220295", "220355", "220407", "220414", "220421", "220440", "220493", "220523", "220570", "220604", "220620", "220633", "220651", "220659", "220685", "220697", "220710", "220714", "220746", "220763", "220793", "220814", "220834", "220854", "220862", "220893", "220894", "220901", "220925", "220932", "220971", "221087", "221201", "221269", "221282", "221306", "221342", "221350", "221354", "221358", "221363", "221445", "221452", "221479", "221491", "221564", "221587", "221619", "221621", "221634", "221660", "221671", "221680", "221696", "221697", "221713", "221743", "221753", "221797", "221841", "221860", "221885", "221890", "221923", "221982", "221992", "222000", "222028", "222077", "222079", "222096", "222104", "222109", "222123", "222148", "222319", "222331", "222352", "222357", "222358", "222400", "222404", "222467", "222481", "222492", "222493", "222501", "222509", "222513", "222514", "222528", "222553", "222558", "222572", "222587", "222634", "222665", "222692", "222825", "222836", "222844", "222864", "222943", "222991", "222994", "223054", "223061", "223082", "223113", "223143", "223197", "223306", "223334", "223603", "223641", "223671", "223682", "223689", "223697", "223747", "223751", "223816", "223848", "223874", "223885", "223909", "223952", "223959", "223963", "224013", "224021", "224030", "224069", "224081", "224151", "224179", "224196", "224213", "224221", "224232", "224251", "224258", "224263", "224265", "224293", "224294", "224309", "224367", "224371", "224411", "224425", "224438", "224440", "224458", "224494", "224520", "224656", "224855", "224869", "224883", "224887", "224921", "224947", "225018", "225024", "225100", "225147", "225161", "225193", "225252", "225263", "225299", "225309", "225356", "225375", "225383", "225410", "225441", "225508", "225523", "225539", "225543", "225557", "225632", "225647", "225652", "225659", "225668", "225699", "225711", "225713", "225719", "225748", "225782", "225793", "225844", "225850", "225859", "225863", "225878", "225908", "225953", "226035", "226078", "226093", "226103", "226110", "226129", "226161", "226162", "226166", "226168", "226177", "226221", "226226", "226229", "226265", "226271", "226273", "226301", "226302", "226303", "226308", "226318", "226320", "226325", "226327", "226328", "226330", "226331", "226335", "226336", "226354", "226358", "226359", "226376", "226377", "226380", "226401", "226456", "226491", "226495", "226537", "226568", "226627", "226637", "226646", "226677", "226686", "226753", "226764", "226766", "226777", "226781", "226786", "226790", "226797", "226798", "226803", "226807", "226851", "226912", "226913", "226917", "226922", "226960", "226973", "226975", "226978", "226979", "226985", "226987", "226988", "226991", "226998", "227101", "227102", "227106", "227109", "227116", "227118", "227119", "227125", "227137", "227174", "227190", "227192", "227193", "227195", "227201", "227203", "227222", "227234", "227236", "227246", "227252", "227254", "227255", "227257", "227262", "227264", "227270", "227282", "227290", "227300", "227310", "227313", "227316", "227318", "227323", "227326", "227327", "227331", "227346", "227350", "227353", "227359", "227361", "227383", "227384", "227387", "227392", "227394", "227397", "227400", "227405", "227410", "227452", "227454", "227458", "227503", "227508", "227536", "227647", "227667", "227678", "227732", "227734", "227796", "227813", "227854", "227925", "227927", "227928", "227950", "228017", "228080", "228082", "228093", "228151", "228174", "228251", "228295", "228302", "228332", "228336", "228368", "228382", "228383", "228414", "228509", "228520", "228579", "228614", "228618", "228635", "228681", "228682", "228687", "228702", "228708", "228768", "228789", "228800", "228813", "228815", "228838", "228941", "229037", "229038", "229071", "229091", "229163", "229167", "229237", "229261", "229266", "229348", "229359", "229379", "229476", "229517", "229558", "229582", "229594", "229636", "229640", "229654", "229668", "229682", "229701", "229749", "229764", "229788", "229804", "229857", "229862", "229880", "229881", "229906", "229984", "230005", "230020", "230065", "230084", "230142", "230564", "230613", "230621", "230658", "230666", "230767", "230847", "230872", "230876", "230882", "230888", "230899", "230918", "230938", "230977", "231087", "231110", "231111", "231227", "231240", "231280", "231281", "231292", "231347", "231348", "231349", "231352", "231366", "231406", "231408", "231410", "231416", "231432", "231436", "231442", "231443", "231445", "231447", "231448", "231478", "231485", "231503", "231507", "231535", "231554", "231633", "231638", "231677", "231743", "231747", "231866", "231873", "231874", "231943", "231949", "232008", "232073", "232080", "232081", "232097", "232099", "232104", "232119", "232132", "232144", "232148", "232202", "232223", "232230", "232244", "232250", "232270", "232278", "232284", "232297", "232302", "232305", "232307", "232363", "232381", "232411", "232425", "232432", "232437", "232487", "232545", "232626", "232639", "232656", "232708", "232730", "232756", "232759", "232805", "232811", "232862", "232869", "232870", "232999", "233045", "233047", "233048", "233049", "233050", "233051", "233052", "233064", "233096", "233097", "233164", "233195", "233200", "233201", "233207", "233225", "233231", "233251", "233260", "233267", "233306", "233314", "233330", "233364", "233400", "233409", "233419", "233426", "233472", "233493", "233510", "233512", "233662", "233705", "233728", "233731", "233738", "233746", "233747", "233748", "233749", "233751", "233752", "233755", "233763", "233782", "233785", "233837", "233927", "233934", "233957", "233960", "234035", "234060", "234078", "234102", "234122", "234153", "234171", "234205", "234236", "234249", "234333", "234378", "234396", "234399", "234457", "234529", "234569", "234570", "234574", "234575", "234577", "234612", "234640", "234642", "234706", "234711", "234728", "234742", "234777", "234824", "234833", "234858", "234867", "234875", "234889", "234906", "234943", "234986", "235073", "235134", "235156", "235167", "235172", "235212", "235243", "235266", "235288", "235353", "235405", "235407", "235410", "235424", "235450", "235454", "235526", "235569", "235594", "235618", "235619", "235647", "235659", "235717", "235732", "235735", "235781", "235790", "235794", "235805", "235813", "235855", "235883", "235889", "235944", "235945", "236007", "236009", "236015", "236043", "236046", "236221", "236239", "236245", "236246", "236248", "236276", "236295", "236315", "236316", "236319", "236325", "236331", "236401", "236428", "236441", "236457", "236480", "236496", "236498", "236499", "236508", "236515", "236529", "236532", "236583", "236587", "236600", "236610", "236624", "236627", "236649", "236699", "236703", "236758", "236772", "236786", "236792", "236875", "236920", "236935", "236947", "236987", "236988", "237000", "237024", "237034", "237067", "237075", "237139", "237153", "237160", "237161", "237176", "237183", "237197", "237201", "237207", "237221", "237223", "237238", "237239", "237242", "237252", "237255", "237256", "237286", "237328", "237329", "237383", "237386", "237388", "237389", "237407", "237469", "237499", "237540", "237560", "237595", "237604", "237629", "237677", "237678", "237683", "237692", "237700", "237702", "237704", "237841", "237916", "237985", "237997", "238049", "238059", "238060", "238061", "238062", "238067", "238068", "238070", "238071", "238074", "238096", "238126", "238157", "238186", "238222", "238257", "238274", "238305", "238379", "238380", "238399", "238409", "238460", "238463", "238470", "238581", "238616", "238717", "238736", "238744", "238794", "238857", "238900", "238922", "238958", "239015", "239053", "239085", "239097", "239138", "239195", "239207", "239231", "239322", "239360", "239364", "239367", "239368", "239380", "239433", "239439", "239452", "239506", "239571", "239676", "239696", "239704", "239744", "239747", "239778", "239782", "239800", "239817", "239818", "239837", "239838", "239890", "239901", "239970", "239978", "239981", "240026", "240030", "240060", "240130", "240175", "240243", "240289", "240319", "240451", "240507", "240511", "240513", "240690", "240697", "240709", "240734", "240740", "240786", "240833", "240863", "240865", "240867", "240900", "240913", "240926", "240947", "240950", "240976", "240981", "240982", "241005", "241036", "241042", "241050", "241084", "241095", "241096", "241150", "241184", "241202", "241240", "241435", "241461", "241464", "241487", "241496", "241497", "241523", "241545", "241546", "241547", "241548", "241549", "241643", "241651", "241715", "241737", "241811", "241842", "241852", "241907", "241982", "242000", "242075", "242187", "242217", "242236", "242238", "242242", "242265", "242364", "242374", "242418", "242434", "242444", "242516", "242534", "242554", "242596", "242628", "242641", "242656", "242660", "242663", "242732", "242752", "242784", "242794", "242829", "242830", "242946", "242965", "242967", "242995", "242997", "243009", "243014", "243015", "243044", "243048", "243057", "243133", "243231", "243235", "243249", "243282", "243353", "243386", "243388", "243390", "243392", "243393", "243403", "243404", "243414", "243449", "243478", "243573", "243608", "243630", "243650", "243656", "243675", "243686", "243705", "243712", "243767", "243812", "243828", "243838", "243854", "243874", "243932", "244059", "244067", "244068", "244191", "244196", "244257", "244260", "244280", "244288", "244304", "244363", "244448", "244470", "244621", "244680", "244715", "244778", "244915", "244919", "244987", "245021", "245037", "245061", "245152", "245209", "245211", "245226", "245237", "245253", "245279", "245286", "245336", "245367", "245428", "245443", "245541", "245632", "245637", "245697", "245715", "245733", "245802", "245872", "245877", "245879", "245882", "245902", "245956", "245992", "246053", "246104", "246137", "246153", "246174", "246219", "246272", "246401", "246402", "246426", "246430", "246572", "246641", "246646", "246669", "246763", "246836", "246861", "246863", "246875", "246923", "246960", "247140", "247263", "247394", "247461", "247477", "247504", "247512", "247517", "247535", "247553", "247601", "247623", "247699", "247703", "247739", "247741", "247796", "247797", "247819", "247851", "248146", "248243", "248584", "248603", "248604", "248695", "248799", "248820", "249063", "249078", "250585", "250723", "250851", "250890", "250954", "251098", "251182", "251217", "251243", "251325", "251341", "251387", "251517", "251521", "251530", "251566", "251573", "251804", "251810", "251854", "252027", "252033", "252037", "252038", "252042", "252134", "252145", "252238", "252259", "252317", "252371", "252577", "252594", "252794", "252961", "253004", "253102", "253149", "253160", "253407", "253436", "253461", "253469", "253568", "254113", "254120", "254267", "254470", "254566", "254588", "254642", "254796", "254807", "254891", "255110", "255150", "255151", "255223", "255253", "256079", "256095", "256118", "256197", "256216", "256449", "256544", "256630", "256666", "256675", "256780", "256781", "256913", "256948", "257001", "257008", "257075", "257190", "257191", "257226", "257253", "257399", "257534", "257540", "257615", "257616", "258041", "258310", "258515", "258607", "258625", "258704", "258705", "258706", "258758", "258979", "258980", "259031", "259287", "259356", "259608", "260406", "260926", "261025", "261224", "261225", "261336", "261390", "261593", "261647", "261733", "261786", "262242", "262271", "262330", "262416", "262672", "263009", "263011", "263312", "263486", "263522", "263582", "263620", "263966", "264115", "264298", "264349", "264589", "264807", "264864", "264865", "264866", "264884", "264885", "264898", "264906", "264962", "264963", "264968", "264971", "264976", "264978", "264981", "264982", "265011", "265194", "265225", "265226", "265230", "265231", "265234", "265237", "265240", "265242", "265243", "265252", "265258", "265262", "265264", "265273", "265275", "265284", "265286", "265293", "265294", "265295", "265299", "265300", "265304", "265305", "265309", "265311", "265319", "265323", "265324", "265326", "265337", "265340", "265348", "265350", "265352", "265353", "265412", "265459", "265674", "265834", "265843", "265845", "265849", "265854", "265857", "265864", "265871", "265875", "265877", "265878", "265879", "265883", "265897", "265898", "265900", "265901", "265903", "265908", "265910", "265914", "265915", "265921", "265931", "265937", "265941", "265943", "265944", "265945", "265948", "265950", "265956", "265958", "266127", "266592", "266598", "266601", "266694", "266695", "266801", "266907", "266911", "266912", "266915", "266918", "266922", "266923", "267652", "267653", "267661", "267673", "268513", "268640", "268642", "268644", "268645", "268646", "268647", "268648", "268649", "269603", "269760", "269761", "269762", "269763", "269764", "269765", "269766", "269768", "269769", "269770", "269771", "269772"
}

local players = GetDBTableRows("players")

local counter = 0;
for i=1, #players do
    local player = players[i]
    for j=1, #allFacesIds do
        local face = allFacesIds[j]
        if player.playerid.value == face and player.gender.value == "1" then
            print(player.playerid.value)
            counter = counter + 1
        end
    end
end

MessageBox("Done", string.format("Edited %d players\n", counter))