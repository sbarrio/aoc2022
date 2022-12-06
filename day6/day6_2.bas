10 CLS : DEFINT A-Z: IF VDP(10) = 2 THEN HZ = 50 ELSE HZ = 60
20 WS = 14: DIM W$(WS): CP = 1: PO = 1 :TIME = 0
30 READ R$: L= LEN(R$)
40 IF R$ = "*" GOTO 300
50 ' If this is the first string we read we initialize the character window (we also check it for redundancies)
50 IF PO = 1 THEN GOSUB 100 : GOSUB 200: CP = WS : PO = WS : GOTO 120
60 ' Else, we scroll the window by 1
60 IF PO > 1 THEN GOSUB 110
70 ' We read another character from the current string if we can, otherwise we fetch the next string
70 IF CP <= L THEN W$(WS) = MID$(R$,CP,1): GOSUB 200 ELSE CP = 1: GOTO 30
80 ' Are all character inside the window different?
80 GOTO 120

100 ' FIRST WINDOW INIT
100 FOR I = 1 TO WS
101    W$(I) = MID$(R$,I,1)
102 NEXT
103 RETURN

110 'WINDOW SCROLL
111 FOR I = 1 TO WS - 1
112   W$(I) = W$(I + 1)
113 NEXT
114 RETURN

120 'CHECK ALL CHARS 
120 ' We create a string with the current window
120 AX$ = SPACE$(WS)
121 FOR I = 1 to WS
122   MID$(AX$, I) = W$(I) 
123 NEXT
124 ' For each character, we check if there's more than one instance of them inside the rest of the string
124 FOR I = 1 TO WS
125    LS$ = "": RS$ = "": CX$ = W$(I)
126    IF I > 1 THEN LS$ = LEFT$(AX$, I - 1) : 
127    IF I < WS THEN RS$ = RIGHT$(AX$, WS - I)
128    'PRINT "C$:" CX$: PRINT "AX$ " AX$: PRINT "L: " LS$ "R: " RS$: PRINT
129    'Char is repeated, current window cannot be the marker, we skip to the next window
129    IF (INSTR(LS$, CX$) > 0) OR (INSTR(RS$, CX$) > 0) THEN CP = CP + 1: PO = PO + 1: GOTO 60
130 NEXT
131 'No repeated chars, so this is the marker (and also, the way)
131 GOTO 300

200 'Print window
200 FOR I = 1 TO WS
201   PRINT W$(I);
202 NEXT
203 PRINT
204 RETURN

300 PRINT "Marker in position: " PO
301 PRINT "Ran in "TIME / HZ "sec."
302 STOP

500 DATA "czfztznzpnpqpfftcftcchfhjjsqsvvffhwfhhqnhqqmlldpdcdnnfvvmpmzpmmr"
501 DATA "srwssqbsbsmmdjdssfqfllclcdczdccppvzvtzznpnfpnnljnnpcphpjprrdhdds"
502 DATA "gdssbqqghqqmgqgccjffdtdcdmdjdcctltdddvhdhfhnnrffwjfjpjnpnpddhbbr"
503 DATA "rflrldlqlrlqqwssqsrswrrrmcmrcrfrwfwpfpdfppslsjsjhhjjqhqwwzzhttcv"
504 DATA "vzrrrnlrlmljlrjrsshwwndnnzwzpzcpcllfrrsjsnjncjcvcllrhrbhhdsdqdpq"
505 DATA "pffmppdzztggvpvnvwvpvdvqddznzrzppznnpnhhwjjrpjpvvqvpvrvfvjvzjvzj"
506 DATA "zqzlqqwsqqrsrprqpqmmbhbffbnnlzzhszhznnhzhmzzfhflfccvvbnbtnnlcnnd"
507 DATA "jjcvjjshhssfjfcjjpzpqpmmdqmqmmbbldlwwvdwvddznncwcqwcwdwbdwwgzzzq"
508 DATA "vqqlqlttbppgtptlldldblbbjcbcttbpbvvhlhggghvvqsshjhjjzqzwwcggsfgs"
509 DATA "gjjgbjgbbgllhhmqmggmsggzszvvzggdngnznlzlrlprpjpgjgvgppfhhbqqcddv"
510 DATA "vbhbqqmlmsssbbszzfdzzznssjllwlplttdgtdttsmspmpvpgpspqpdqdppfvpvv"
511 DATA "mggrwwgswswmmmnppmttqppvttrvrllcmctcqqlvvpwwghhlmhmwhmmpfmfvfwwb"
512 DATA "gbqqdbqblqqclljcljccnhhghbgbrrnrppchhmpmdmfmvffvqqtnqqfccgcfgcgw"
513 DATA "gcwggvgzvvbwbgbjbwbcbgbzztbbsbdbvddzrdrjjlqqlslrssjddhbddzbzvbvh"
514 DATA "hrjhhrtrltljljwljjrnjjjlpjphjphjhjvjgjbbwfwcctgtmtmdttjhthphhchf"
515 DATA "cfnnqlqhqvvjcclczlzwlzlhzlzdlzlbzbvbmbcmcjcncwncntndtntbbgqqbrbs"
516 DATA "rssrnnrcrmrlmmrqqddhzdhhnqqvccbmbpbwpbwbrwwwgdgnnhzzhphbhwhwzwhh"
517 DATA "vhqqnmqnmnjmnjjjjztzvzvbzbbvcvggcdchhhhbfbttmmtsmsgmmqvqdvdrvrqr"
518 DATA "dqqrhqqpsqqfnntsnnslsggcqqrnrmrfffmgmsmgggrdgdrgddzfzqfqfcqfcfrf"
519 DATA "wrrrgglwlmlmlgmlmrlljzlzglzztllgnndhdthtwwdrrjnncssdsnszsggdhdpp"
520 DATA "rnnqzzltzlzznlzlflgfgbfggqtggfbbccchdcdrrnwnbnhbnbjjpzjpzzwjwcwg"
521 DATA "gfqfccdzzfddmbddgbgrgllnttrwrjwrrbsrsbbwqwmmlggzqgzqzrqzzffmcmss"
522 DATA "gjjjcdcssndsdfsfddcffbrrcvccwhhzzlglhhsccvdvjjdldndrrvlrrbwrrbqq"
523 DATA "cbcjcjpjggngvnndtdvttlrlmmcbcggbtbhthjttdggtvtmmlgmlgmmdwdndmmld"
524 DATA "lttjlmbtrwfnvmnzggqfqwnppbrnjmpjfppwltpqfstgnnjwmbffgfbjmfhqngns"
525 DATA "wftgrqvpljsmghszclhhprscrgtmsgbwnbrfhwdsbjrdlhdcqfthwfggpzhjrvmp"
526 DATA "rcjjgrlbmdqczmsltnpnlpldvnsjbdjzbrglpsmbwdhhphcdmjqmssdlgjtmphhj"
527 DATA "vpjqcdvmdtszldnjtbcffhwrbqpsrsmmsqsbbrnhsrvfhhcmwgcpsfhrfcpvldrw"
528 DATA "stqtgrcgrqttvdnstlbdblnbtcgdgpbcjdlvwpplsslqdsbpncbwzcmlglbhnrtb"
529 DATA "wvnbfsgrdlpzszhzmzqtztzgjjjszmjgggdnslqqqrrlwcghpvzwpndbjbhhhpbb"
530 DATA "tvjvjvjhntqggtmqwdnrtswcchsqpdwnvmfqrgpvbtjpttfhmlgtnsgnpcrhbswf"
531 DATA "blwrbflqlgtmvzvwprtfntshjcpzshnlnqthvqgpzffsbdbvbhpghwjhqpjwjfbs"
532 DATA "rzgttsnrpmfrvlwrjrfplrtzpntjbvhdjjfjjzrrvrsrctrtldrsgcgvntgvmtrn"
533 DATA "qbtmpzvlbwnddbnldbhfcpncqclzqgmbjcnnfdfsmdjdgtmtzbpwqrhrlggrfjhv"
534 DATA "rrqpjptqdzpwffwnfwmfhfhmcpljmhttbltgltqjhtvbdzgwrppzjwhctnncqthn"
535 DATA "lrhzgtnffpwnnqqgddjtgtczfmwvbccgvmdfvggdghmssjlflptzrpdncbjcsdlb"
536 DATA "qjfzmnzdggwdczghfpldsbnvzdjzsbsdnmwptgngmnbqmwbrzqgnqbmfvbzzmsvl"
537 DATA "swbtvfllqzsjdlvzjmbmlbnljwwjsqzqvfwhzmfdgttfqsdttnjmvspsgvpzwczp"
538 DATA "vdbvhjjrttghjddrgffqdsmzspnssztjjmwtsrtlrmbqhfbvpzsmnqthssbqrjhv"
539 DATA "qllrbbpjjllszmnjvzmfsbjtvvvgzrvjwldlbzjdbrsvvgmmjrgsbvtvthjbcqlz"
540 DATA "qhjqfvbzzvlpmrlmphftwbsvvwnwqfwvsnlvlcdgqjspprmwptcjhbjplzrqlhmv"
541 DATA "zmbfvwwvgvtqlvgfvzqdprfcjqsnndwqmbhlvfvhdhghtsrhbcrrshlsdtlbwntb"
542 DATA "cvvjhlcscfcnhbdnngtsccrnfbbqbfggvwnmlfhmqbdqpnzvzcvngcctbrshsdvh"
543 DATA "stcnwvjgwchzdndgbgjnddrmfgftvvjtdnqhfjmpjcjjtmgztvnwnrjjgmcgcqcl"
544 DATA "nwvclngrtjggrprmfpqcsmdtbswhwrgwgfflqldtpnfdhdltrnhdvqqdsshcrnnc"
545 DATA "dpvbhvlcbjlznjjzsdcjjpqprnzpmvqvrfnhdvhgrsmlcgtbsmrgqqtmblqmqcnm"
546 DATA "nmbcmmjvnptzbbqmcpwbflhccpfrjvfzmcsttfjtjgrnjbtwbncrsjjgjwdpmvfp"
547 DATA "qmzqwgjvgvfnpbhgzlzhfsnwmjjjsgcjjcwcfbzrmfzwdmhffqnzscbnfmpnbdbc"
548 DATA "crsjgqgvftszdbqbstwtwmwfzbtmvdmwvshlcpqnsqfwqlfclmjdjvgszsdblwvn"
549 DATA "htwtrjcwsmpgflhdqmndrjvqlhqclmwhscnznmhjtqjlnglpbmgvptjnrpnjlqsl"
550 DATA "ssfnbdwlrwrdrtfspsjwzvwzfjpflqgmfnbvzqglrrccsnqtchnhlnrwlwqmqdvw"
551 DATA "sjmbjbvczvqcgfrrtftcgqsnvzhjlshnlvqmvrjljpsvmdzwqgltmccnplbmplhp"
552 DATA "vvflhmgfzmhczpwffbzhzhhggzgwtpmlzgrbpfgcnmfdbgcwrbgdpzpwmtwgmjtp"
553 DATA "mqzzgclmcpjgzdrwqfdwqzzqszrwmbwcqzcjdphqtwlbqmnddsdthgjrlshhmzgr"
554 DATA "qlhghrbqgzppqbdmmlnthhhmtdcdnbqfvbwdrdgbbpbhtrflwmhwjmzdtwmzhjnd"
555 DATA "brvbtbqnzbsrrbfdrrdnjltdtsjnpddmqzzbzblzvwctpdhfqgqntczwlgqbvvmh"
556 DATA "jblztlpptqjscztlrvrglrbsbfdjdfbwjltjcdgmqzgtjqjfgjnnpqgfhsrcggrs"
557 DATA "zhbgfhtjmlgmmvshcpjwmcwcvwhnbjzrzfwtnlsnmdgfpbhvgfrhmhmsmtrnblsm"
558 DATA "njclqzfgttrdmvpsvlcvnhmgmltfhffzllfrmdqdpzdmjdmsnmpwbwvrdvwvrcds"
559 DATA "fwftfbfvmzjttrqgqlqqdtmcpdpfqfsclcmcdzhjwqrbhmzjjsvpbjzzgfwbjbqm"
560 DATA "zmtrnflwrqgnbgqnpntqmlngmgcrflgvhpznvrfwzlwrswbdsldfdbhvwvcbwhmp"
561 DATA "cslhmmbjdzvmgrjwzqqzlrrgddpssqcshzrsvrrzzcbsgvfmrlcgjrcpphctdwtj"
562 DATA "bmrlnrmrbgsqbjnmnsbjfhszcgdqfflcwvrvnwtvcnhcffvphwmzqpwnwncrbnzr"
563 DATA "nvjzsrnlzlfdbgztrhvlvpczzqnwsvwvnhgnclhndjsgqdgznjzrtmslmgnjzpj"
564 DATA "*"