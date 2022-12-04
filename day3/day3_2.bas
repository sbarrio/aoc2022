10 CLS: L! = 0: AC = 0
20 READ R1$ 
30 IF R1$ = "*" GOTO 200
40 L = LEN(R1$)
50 READ R2$: READ R3$
55 PRINT R1$ : PRINT R2$ : PRINT R3$ : PRINT "" : PRINT ""
60 FOR I=1 TO L
70   CH$ = MID$(R1$,I,1)
80   IF INSTR(R2$, CH$) > 0 THEN IF INSTR(R3$, CH$) > 0 THEN GOTO 300
90 NEXT

200 PRINT "PRIORITY SUM: " AC
210 STOP

300 CD = ASC(CH$) : IF CD >= 66 AND CD <= 91 THEN CD = CD - 38 ELSE CD = CD - 96 
310 AC = AC + CD
320 GOTO 20
 
500 DATA "lflZfgnSnlmmlgGfjGthQPtLNsQhvbHLLpSS"
501 DATA "zrCVDVFMJTCTcCJMwCThWbtbpbWpPbtbHPLQssLsHP"
502 DATA "rBFcrwFzFwwVDcDrzTzJfnRGjllBdGZnnZfhqmdn"
503 DATA "FjpnFRDmbRtnbJrFJmSTsGShWVhGqGVVsmqs"
504 DATA "ZwPvNPdzNZwfzBNLdNNNNcLvhnQhqMTVsTGSWSqGqTdVWhMT"
505 DATA "vgLZHfvLffNLPbggnrbFpJnCbC"
506 DATA "hzJzGjGfqmGtDQtDSvVV"
507 DATA "plpcMBNBcCTlTgCMbvtrsSVsVJDJlrwDQr"
508 DATA "McHBMMcTTHgJnWqnRqjzZnnRzR"
509 DATA "ppvsGZhDGprrSjSllwfZ"
510 DATA "TTFMMFJMgMHmHmdqdSvNqlSSSNJv"
511 DATA "mgBPHTRWFRVcpvsVttppbv"
512 DATA "ZZDssfMDMtqqppZLLJzmzSTwNJplTSgpgm"
513 DATA "BdCRRHFRbccWWBvBHCdcJVngNVSvTgVNzgNNVmnz"
514 DATA "QHFFrBdcGtqPmmQh"
515 DATA "qLvQFRgLSSNgqQvRrqLTQvLttwDBFWDwjwFttDdlBBwBwM"
516 DATA "nbsmZnbmHbZVCGPVmHWtwlStBDtwBMtwWHMj"
517 DATA "CnCbhGCPpPCSnZmrgRNRqNRrLNgrzh"
518 DATA "vgLWWHRNLnWwLggWzwLFFzMmBMRMhMhTbhsmmsbbmQTm"
519 DATA "rScpJJDDpjtSDPPPJDpjqPCHBBtlTdblmmlhBsMMmTsbmtsl"
520 DATA "GHZHCPprSSwgvWNVwVZv"
521 DATA "dMrCMJMqvtdFwcjczjQzThtm"
522 DATA "gGbLblLpZlHvllQhlQwcjT"
523 DATA "GHRWvPRbPHPRvNGbvdRBqdqBBfRqBqnrfF"
524 DATA "VsHcljlbhmHbHHlcjVcVShJSCdJCfMrMMQDfRNFCfMRGfNrQ"
525 DATA "tGtvLtpgBTGvDMMRdMMgdCNM"
526 DATA "pnGnGqGtvtzTLjWqmSSjHhWhWs"
527 DATA "NJTDntDNDVjNnjBfjjjcCZCZcVqCSCLqcSScCc"
528 DATA "zvhgRgQvvdllgQbHghlvHrRHSScBCRqqwCLGqSMCZCGGGqMZ"
529 DATA "pvvrHzdgvlgzQphQsDFmnsNTTtjfjJJmPB"
530 DATA "ScnSZSZZlmjmHjjWHHWZftJVJpppwtVVnLJtnptnwt"
531 DATA "CFFlQBbbPQqrBwJrJJrGJD"
532 DATA "PgTqRddFzgdRPFFbFgqQFgsSjfHWfSHmSMWcjZlmZmjTZM"
533 DATA "lzBRtctbnBRBRBBWnDnDWjlLVvwGMrvwrHHQHGmDvHQvHGrV"
534 DATA "FsTgFCTSgsCNspzhCGMfTHQVwVMfMmMmrH"
535 DATA "hSdSFgghhqpRbLqjntqnPz"
536 DATA "DCDnNGFFDQdQmVDNdFVNFccpJLHWSvPLrvvvPtGGhSttLv"
537 DATA "sBgTzzZqrBlfljslWBhvHSvPBhSBJSSL"
538 DATA "lRlTgMzlzrwRrnmbCMCFnNVMnc"
539 DATA "MJQJMJHBrsdrHwts"
540 DATA "dbbSVGgbjVqGTVfqddCTpmWWcprgNgWmcWwWswpN"
541 DATA "LPdGGdVGPCVdLBlBMlDRRRMD"
542 DATA "vdcwZLTdTFFRDHVgmpppMmqZ"
543 DATA "jGPzCnQPjlsDVqDpqDHbgP"
544 DATA "BjWJrlGQQzrCzBzlzBCGBznzwNRNcwLJdwTJFTHRSTvtLcNN"
545 DATA "ngrgqTjJJZnjFJpnqnnVTLzBbbHbLQdLHLHbrdHdHG"
546 DATA "lNcltCCtvftfWssPbMQdMBzhbbcBDLdh"
547 DATA "PRtWsQCmWsmSsCNCSvCSWlspwgqjqmqjTpnJZwnZVpFwgq"
548 DATA "PjWjGDCjmrmWPNmvWDWFmgCNfVJRLfJRfLDLJQlfHplpRbfR"
549 DATA "MtZMtcSbccZshTtQTVVTpzHlLRRQLV"
550 DATA "cZhbwMnwqsqnhnqtMBnvNFrnGPNPPmgPGCgW"
551 DATA "WBjWjWjqZwQJnJZCZZbf"
552 DATA "StHSDRPHHcTrTrJpLCCMbrqnJn"
553 DATA "RvTTvGqcqTFvSvSRDHvRjlhgWBWBdhjwjGgNjhlj"
554 DATA "FSbCqcFsbCPtrcrqhCScbshMjHDGGWBLHBnjGLPBHGGBGnHj"
555 DATA "flQdlsgQgGnQHBHjDn"
556 DATA "vllgRZdmvsvpgdwZgzJdwRmprqccSFcSShJbTSttqMCrCCch"
557 DATA "GwwgCtvHgwcHVVDqpWdfnqVv"
558 DATA "sllBsSNBjSrLfqhLgjfqhL"
559 DATA "ZbQbZQzgQQPSblBggNQRHGZHHCmwmHFGGcwtJm"
560 DATA "CmGVGBTVTmmTWTNLLCVgCSFvDQppQQDDnDQDJpMggfnQft"
561 DATA "RrtdqtldPbHzRbnjRfQZjJfMDnMj"
562 DATA "wcwhccqrdrrlFmLGCwCtSwtL"
563 DATA "pzZznZphZnpcNWSwGwVVPzrPrG"
564 DATA "lgFllLLltgbDsrBCwrjWGmwmtw"
565 DATA "MgJbDLlMQRJccchrhc"
566 DATA "wbbjzZhdGDwLzZSBWqqHmZgssCWqFtMZ"
567 DATA "VRJccfvPlTTlQlHQCWQhMMhCCHqQ"
568 DATA "RlVfVJcPTVTfvvvJfNJVlcBjGjwhSLdBNGGnjLLBwzGb"
569 DATA "bvpqHMVTTpZnqnWRQQQw"
570 DATA "tfhFFdSFggfhbldhhZcnRscRcQmnRs"
571 DATA "DPzgFJzFLfFbFSgPFgdPglMHpvBpHTCMGpjvMMpLvvNG"
572 DATA "JggGLQgQpLpSPRJgGPSnGlFTDBjjRFvRjtBFjWvFjqRj"
573 DATA "cmHhZcMHcWjrTBjrvm"
574 DATA "dbHwdNNHhwTNThZHdlwQJJwngpgnJGnSPw"
575 DATA "DbZjVfjVLhZDLpWPHpMZPmmGNp"
576 DATA "lFcJJGcFqnBFqwJCHHMmNHPsdCNp"
577 DATA "BlwccRQtBwBrwLGbGhGggzLgzR"
578 DATA "RBhZPjlWqgbNbgGLBr"
579 DATA "MzSmSzpFdHwpswzzHnzjnvLCbgtrtLGLbJLLJNtJtbwJ"
580 DATA "MsSHdmMdpFfmFjpfcPWRhRVZfWQThZ"
581 DATA "mqmssPCFhhsJccVg"
582 DATA "FTttfwdjjHznJgfngpnc"
583 DATA "dNFTjQNRtRNQldRNrRdHMRrlPZqCGlGBCqqZmmbPqDmDCmGW"
584 DATA "ZJVRRZZJRcvmPhCJrvhm"
585 DATA "PPWQDTfWbnnstlCGvjGrWMGMvr"
586 DATA "TbbwddndsnsfDpwFqZFVHBVPqc"
587 DATA "tFmpJmgJJgmFDWgRgFrrlGSltSQvZChMtCMM"
588 DATA "TLcZHsjLVNBwGQCCGlsCShvh"
589 DATA "nqNdwwccBwVLwjjDznZzppbgzFZfDF"
590 DATA "qsTqCCCszjlqTssBShlQSSZFgZZhgB"
591 DATA "LDPmVgDDJdLPrPgLgPZSFZQfhQGGBQJcSFJS"
592 DATA "mvmVbVvtggVtvgdLVvtmptCsNTtjRnpRTTjpsqCp"
593 DATA "BdNPLnmFvLFNgnmBmnFGnwSZZZWwqWgqjwWssTHWSS"
594 DATA "bJhMzhbVMbDCcVpZtjHMqTMwtttSjH"
595 DATA "hzclfCppVqQfbzQVbpzPQLNFBdrvdNGGBnmrmP"
596 DATA "nLVLzBDJCCHqdLncqVJgSsDlGsbssmvvvbvbff"
597 DATA "jMNHFWNTZZNwMPrPWrrPMMrrvSllbgsllfgbgvQsvGmglZbv"
598 DATA "RjPjrjRPtNrwHhBtncCJtJtL"
599 DATA "jbhhjhNjvqNbmjMjqhtCFdmPFdlzJzfFfJQJfR"
600 DATA "GBBZWrZWgpSsnSngrrSgHzFzFFdClzfFQFlRZftQPR"
601 DATA "TrGTrGWHpHWGHWVWsngprHpLbLLVvcqMcNbVNLhwVNbtNb"
602 DATA "sQDvDmDLQFDRsdchzhBczLhhPhVz"
603 DATA "MbGGMjjGZSjvfHvHSbfwBqcPnqqcPVhPNnqnzjcn"
604 DATA "ZwMMHrWvSHbfJfTrbJwSMMfMsQDtsFRptlpdCRpWmptQDRmC"
605 DATA "TwMHdcTznLqzTrHdzzzHTdgMRQWRhJhNjjvgQvQQWNjl"
606 DATA "tbfsVbDCVSSDtSPQJWPvRNhQtghN"
607 DATA "FVGBpGCVFCbfCbVbZCSHqmwqcqLcdHJGwHqqTd"
608 DATA "lTlGfjLGwHNMggscsDRwsC"
609 DATA "MrFtrzZZPZrtVQtnrrFdQhhDPDSphgDRhDcsCCgWpW"
610 DATA "ZJmJVzVVJFHfGbqJGMLv"
611 DATA "zsFZVjzlHPfTzGfLGt"
612 DATA "mdrrmdMMcBcmNqNbPqfRDLPWPlqTWD"
613 DATA "BNQhmmrBrQghgSmNBQQSmvwssjZZSJHljJFFHZJvZV"
614 DATA "rLZCsZdMJfdNCsfZMrLdFmssnwgTRQgBBwgRwcngTNVRVQjV"
615 DATA "StqDHlStDPgRTqcwjT"
616 DATA "GlDGDhbpHhvSHWlzbWlhpzhJdrFLrCLmvdmFZsmJJjJfdv"
617 DATA "pJHJMJsJjSMFdHhszFvMhlmmGNlSmmBGllWmVlwcTw"
618 DATA "ZqZRDrZCZDtPDPDrCngrnnPQGVmGHVBWGWtGmWVwVlmTlGNl"
619 DATA "ZQPgRqrrQPqLnrLMvLphHdvdjpJddb"
620 DATA "NwbBjljFbcjtTcccqW"
621 DATA "RHZrPHPpNgZTzTqc"
622 DATA "sfrPdmPdpsmPPPrfQPVGlwGVBwbGVnFlNQCG"
623 DATA "hQdNTlzhdTvrhdnTBqcWBLsBHgWQgBPg"
624 DATA "zwzRDbDfqZBLHDLB"
625 DATA "wFbFmjjRzfmjGGMGMfmJwwGCCnvNhpvSCNnrvJvCprnnSp"
626 DATA "zshNNJbwGFJfGJzzzNRnHGnCnRHcRPgTmPmn"
627 DATA "LMDVtZLStrrZClBrVDllLSBWRPTPPRRPmgWPVmPTPHTWgR"
628 DATA "SDSqLMlrtLlLtrBqBdlMZjvffCNzwvhjvvzhdfNhvf"
629 DATA "SLQmGBmhLSLQTBGBGwdwpJjwwQjwcVpJZJ"
630 DATA "sNrWrWPNbHghrbgnNNzbWbFWdZpMpzVpdMZMzMMVZcwwJdwd"
631 DATA "frrPNNWshWhhHDvDGDRSBSRvttqv"
632 DATA "FJqpgvhJJRjFjZTqDsMHrzwjsSsSszMrMm"
633 DATA "PPPQWGtnbbfBmPsFswwsMrcc"
634 DATA "QfBtbldtWQfbWbnfGlFqZppvpFZZLhFlpq"
635 DATA "ZqSMZHHCMpHTZTWmFTFZPZQJBgVGVJQvVVSDBvBtcBBG"
636 DATA "RNsndwsNjsbsgGCgjQBttcBg"
637 DATA "NRszRRNzLNNNwNfhCCrfdmTqFZllFFHFFpWhlTmWpq"
638 DATA "llbbzDmSspGRpHpzsldzRRsVtFBBFJMMVVFLTTTMVtLTDM"
639 DATA "cqgjqvNgvqCjQZqgGGnhMTnMJVLBLMtFhhVFWB"
640 DATA "PfGGvQrPCjvjZgGCCCZZZbSmmmHlRpprlHrHwssSRr"
641 DATA "mRmpFpWpfMMgLnmS"
642 DATA "CdCsqzdRzqStLjSqfMnL"
643 DATA "wQRHdTzCQbzCwsTrZBlFZGpVlpFGQD"
644 DATA "qnMTnTVSTPTHTHcMZMvVpmppmFmVzFLLFLlFpG"
645 DATA "gBjDsjRRwhDDghthwwWZwLmpmwWWLWLbGZ"
646 DATA "NhZtZtBgPTNJJNTS"
647 DATA "jLjjmpHvzvZrfzQjmfHHWrfbqblLsSlTsqsgqPJbPqVglb"
648 DATA "FBcCwDwtwgcgnCwcGchtJSsRqVRVJPPqDlbSDRPq"
649 DATA "MBhthFNtMGCwhcwnpQfWjNrQprpvzpgQ"
650 DATA "RfCnWfnhCbwHgWjzBgzB"
651 DATA "PsVqDsSTshsgszpsph"
652 DATA "DPDvTVtTShhSZhmqSvLlQJFnQJJZnbCnlCCZ"
653 DATA "pRRdJngltnwwvTNSWqWffqgBqD"
654 DATA "HQGcsdrjzMDDBfGMGG"
655 DATA "FLhsdbzCLLHjhntpVnRPRvZV"
656 DATA "gZNwQHHNRlGvhvhGRvRb"
657 DATA "dpSSBDrzdCfcSzfrzZrfCfMbthWWWPttDthvMFWvvvPj"
658 DATA "ZdpBpZCrssBJZfSJBzBdCTcnmQwmnVVlmqTQTTQlHLwNnN"
659 DATA "ssCpTttVVVpzZDVvRpCsRtDgWBWBBFBJvvJHMBghGghrMJ"
660 DATA "lwLmNNLwSblbmSQLfhJHZgHrHhhJJhHHmW"
661 DATA "QLSdbdPqndlNlLdSLNQncpRtRTcRVTPPZRCjVCcc"
662 DATA "wzzJclzcTThvWSSCqRlQSsNN"
663 DATA "rDpVjpVVDpsQSRDRfQmm"
664 DATA "GLbjrLpFbgLVLLgdbjVpchcFZhvBwJvtvtJcZwRB"
665 DATA "wPgZgLVMfWVTgmTZZZftJjtfjtJCcdpjdCqc"
666 DATA "zGGbQQnQGvBBhGQvvvBBSBvQdhdqqCpdddDmJlCcDjCtJdmJ"
667 DATA "HszzHBzQBSmGSwTWgswZPWTVgZ"
668 DATA "GDFvzCFdrszSdNJrFfjjfqZjRfsjpqmcwZ"
669 DATA "WbbVtVnBPWMgBLMBnQQnBQHcjfjpZRwqcwMfcNTZRqqNmT"
670 DATA "WQQnVVPHtggLghWWhHnPVQbvlJhSlrvJDlFGJDdDCzGNFF"
671 DATA "dVhTBjBHtTVqWRJZRqhJZQ"
672 DATA "brSDTbDfcCwDzfCSbwMQnlqCRJnMgWWnZngM"
673 DATA "DFwNSrwNwbDzbFTTFtjmBpVdGpHs"
674 DATA "dPQfdfTzDrFDmFDBgBFj"
675 DATA "RlJRclcswJRvnwPcpjbjbbCZjFjbBmsbFZ"
676 DATA "pqncGlcRJpHGpllGHhvPhRTHrQrttVVfrdQzfrTdftfV"
677 DATA "RCzTzRMTfCfRRDzRfhSmZZlCslBbZZBVtZBZsqBL"
678 DATA "nvvJPpdcFnPcWnFnVZvBqVlZMbZBNVlV"
679 DATA "FpWPMdjdPhSTmwfSjD"
680 DATA "NDJjNHLLNWjcLLWCLJLZjLDtRqqtgtMqgtqnRqnSRgggtZ"
681 DATA "BwrlfFwmQwhwfPBFhsBdFmbQggCgqQVtbRSqttqMngnp"
682 DATA "llPPwsPlGshBJGWJLcHvCzNv"
683 DATA "rBvTmwdTSbnrvVWsWVftGfJQGT"
684 DATA "gNRLLjlPRWnFVRFDFW"
685 DATA "lpCpPNZqZCdvdppnSnBr"
686 DATA "ShRdCrJgHClZJtZDGMMz"
687 DATA "LvqVVTTNbVPLQNFTnwwMtzFZGDDwmtnM"
688 DATA "VLbNvpPvTNVqVbbNpbVPGNLPrRWrcRCWdSrCjWSHcHSdWpCh"
689 DATA "tNmZnLSZPFLDnLTmhJMWczQdhmWhWH"
690 DATA "bGqbgrpsCsWhcChNQfJz"
691 DATA "vwlNbppsRGRRSSSDvjTjLZjZ"
692 DATA "zgMZhgfBtftSZQQmLHpSWH"
693 DATA "cdqcqnrJVGjjqPVjrPnfpJmsQHQQpsSsbsSDmm"
694 DATA "NNnrNqNlrNcPTlBvBvgggfMv"
695 DATA "llPrrLHBHCrRRBjrHCjBdrPmvJZzZgZbmgJlZmZhMhhmvh"
696 DATA "pNDstVtNtGFNSDFScQtfwzzFJwmJhgqzbMwqZJmh"
697 DATA "fpNsptGtQcTsSTccprddCWPrWdTRBMMCMd"
698 DATA "TTtDVqTsTcJFgbCqmbCq"
699 DATA "NWZQnllzfBFZPBGWQGzFPFRNNgHbHrrwbNrmCbggJRHR"
700 DATA "nBZjGFjMQBMPZnjfWjstpcctttvVtcTttMpL"
701 DATA "qphVCCwnHqhnRVznFwvLtBTLDTWZtwLWWS"
702 DATA "JmdlsdlsjfJfrtjTcvtctDZSSB"
703 DATA "rsmfPGbrPbPJfPmrsgMrdJdlFTHhFCqhNqVHnNHHCFznhphG"
704 DATA "JsWFMJJzrhSSdFdldmmdmdQc"
705 DATA "qLLgCVTgLbBvqsQPVdQGcRRmQmdc"
706 DATA "bBCBgCCDbLDqTvqqjpShHfzrzMfjtHHSHsfz"
707 DATA "nvFSBFlvvgQFFBzQnlQglmRRzqwsrrMJJMrsMqrfrwzf"
708 DATA "CjZNCNhLDNbPZZLZZhwVjpcfrqRhsdJqdsshRTTdqJrJ"
709 DATA "jNNDDppjpjDWNVLCVVDpGVVPBFtlSQFWvvQvSSQHSgwQnvtB"
710 DATA "WhrQWBRWwhzgmpnSpH"
711 DATA "LqMVsJVvFMJLJMsfNjsTJvCgFbSmzgpSHzmngHbGPCbm"
712 DATA "jvMjjtqVjTRnwZQwBWwt"
713 DATA "jfTWSGSTTWhgcngQfbtJfNzztBQBzz"
714 DATA "pVVwsdppRVPLVmPsVVHsjPLPzQdzBzQFzFBNNrJZZQBzbbFF"
715 DATA "VmsqHmjHmpvGDSWDvlclSl"
716 DATA "PNZfTFSFfTFGCHqqmbFm"
717 DATA "WjzRWrjVgnjzplrWWjJVppgGPGsgstmPCCtcmssQqGQt"
718 DATA "pzjzJVvnzJjWvpPlnVRVrvnlTDLNNhwfdNZLfMZLwLhTNvTw"
719 DATA "QFrQZMFVrVpVszzcNTdMRCCb"
720 DATA "SvljGmlvLfwLhLLLHlHdNzsRthhbbRccRCRNbC"
721 DATA "LfwlDmlvGBSjjlLLgpPpFJqgQndQgZBJ"
722 DATA "RBjPRHdjPfqQcfhcdv"
723 DATA "SngFcJZJlcnctSlhhsQvGsDGDsDnfs"
724 DATA "pSmFgSWNJFNtStrmNtpCCjPVcbjjHbcWTBHBHL"
725 DATA "vGjqCPqNPGFGNftLwmZwfQNTLp"
726 DATA "hrdBCSHcCJJcCBShJswmLQpLbbQZTLLJmmZp"
727 DATA "BdHHSzrBWdzchzzCcdzHddcDVWFnjPjllGggVlWljPFFFWPM"
728 DATA "hBtZZnpbhbPZJbnhDtPnpBtpfjfNNzrrCzjFzFzFTjfjjWzJ"
729 DATA "gHllMqRSmqcqMTdggMqHlcFzRrFQWNfvrRvzQrWjWvWf"
730 DATA "gwqlgHmmdsgwlwMHZtpsbBbtDBThbBht"
731 DATA "CsDLFFLFCvczsCsJrCrJJLRgbQQgmMmPbDDQbPnMgMmg"
732 DATA "VlwNBNVhjNVNWBwWjtbRMRZzPmQnfQMPnlZP"
733 DATA "VWWSSwGTwtwWWNVwwpqJJrcJGvzqCJCqJF"
734 DATA "wLwSSbzwCvddlvvlSj"
735 DATA "THnQnnHttcvpQzrZRllZ"
736 DATA "sTntBHTnVbPbgzsbgL"
737 DATA "FwHgrHvFQQwpHhNhTBLdpNNNLd"
738 DATA "fCGqCVtszfSslCSzSGsfCssjNTqLTdmjNLBLdnTTTMTjTg"
739 DATA "DccfslfgRSSVVzlcSVtzDRVHwQZFrwwvwFWbbbRRWwrFJb"
740 DATA "CwwWwwFNRpFFpZQHtsmfqbQDTQTTqb"
741 DATA "VcjzLjGjzGjGjVjLdzqmDqHrsmsqGRrHqGqH"
742 DATA "RjdVlgdnljlBnSgPCpNwwMWwMM"
743 DATA "tCCtqtbPGzsSQVzQTq"
744 DATA "mzMmHMpRsRQTsFFV"
745 DATA "DpzDwgdMzMLppNmNpDpfgrbhLcGtPrbtrbrbhnbBcC"
746 DATA "BvsQBBBLvDQGjDvSQLTvrHprHlRpVlVllgRbRbHPqq"
747 DATA "MMMMCpfJFZZMmCzwpVPCWRtHgqWgqClgtt"
748 DATA "FwzmfzhFFdFcpvSDSBDThs"
749 DATA "fQrGQbFFFrHHtlHPclzzPLvc"
750 DATA "mTnwpNCCqMqjmCThpTpSvvtBczstlLznvsztsPPP"
751 DATA "mCpTNhmmpCqCmjmpTjmLCpSJQZVfFVrDVfffFFgfgJQFdbgG"
752 DATA "GmWjRBSfttcGfRcSclVVJqsTMllsgJVMVZwV"
753 DATA "pPFNpfNCdNzCVMTTNqVssqJN"
754 DATA "dzPfHCLLhdjjLGRnmnmr"
755 DATA "GPhPfGWgggfslffPsVPGsqJMzLQJtBprwQJJGQwLpQrw"
756 DATA "ZNdmvbDDbNvHbmZCcJQwMmzMwWWQrrwttp"
757 DATA "bvdDNdnvNbnHDdnDHHRSbnqhqhWfjWFVTVhRVjfjFTfP"
758 DATA "hTThfWNCDRfsVCDhpgzgbpPZZwbnZQns"
759 DATA "GSjGGcCBGmdjdSlGBcmZwzJzpPpJzwPwQbzgPd"
760 DATA "BGmcrcStcMMMmrSLmSMCvFVRFDhfFhhNDWWTqFqTvf"
761 DATA "ZmjDTTbmqQCCQQSwvhsL"
762 DATA "FGVJPmPmtRVRsCvvRLwwhC"
763 DATA "JgdHJgmfbjzTpTMf"
764 DATA "fTbsVCsssgLNrfNrgm"
765 DATA "zQvzZlRvddvpNLpZrMNNLZ"
766 DATA "HLvWFHHlFQvzHnnlnvQqhzWvstBwbGVtstjGqjjwqGGCcwGq"
767 DATA "JNpNdzzdJhNnfNGBZLqZqlhvSZSG"
768 DATA "QswtcmmwwmTmwwcwZSLlZLDSvSvlBZQD"
769 DATA "FsVFBbFgFsPwtVBTwgTPcsmpzdNngfzfpCzJdzCJzNCndn"
770 DATA "qcvrLBppgpWWWgLcpzPfhNDqdzqwDDzwhV"
771 DATA "MZFjFnHFMHbMntMtnwStfddPhDffDfzDfS"
772 DATA "QmnjMZnlHjmnMGFnFlMmjlZWzLgsGgcrspBBLCBcgvgBRC"
773 DATA "sdfWHjZfrZrSPMCQ"
774 DATA "zqtWRDDDRMbrQJPQ"
775 DATA "zwhwzmqwzmFpWzvFqBmFvjNHlHfgVLBgdfVfNVjLsl"
776 DATA "lRlBTlvlZfhtbGBWtFBz"
777 DATA "cqCNjjqjrNrcNjwDqNPCVrSQStSWshFhtQhbQzGzmFCG"
778 DATA "HjPPzMcdNqjcNHMqPjdpgpZflfdgnTfdlvlJ"
779 DATA "VpwQJVRtHplnnwtppHhqWBCfVdNNPqPBPWsBDq"
780 DATA "jzLZCrvvrZjZvqNffvDNDcWDWd"
781 DATA "LTrZZLFZbgTzgjZZjFClJhTHTplQpmnQlpmpQR"
782 DATA "JGJnSWLGSpWHVHwGGJHpZdwPdTTPMdTMDdlzccPMPv"
783 DATA "gqrrmtbrbgggqgBtqmRSrFgNCzvMDvlMPDdddvzBcPMMMDBd"
784 DATA "gjrmRgmtRggFtqjbhgbjrtnJJHWLHQWZZLhZsLLGHhSL"
785 DATA "BtTDNggLRPdWQHqggg"
786 DATA "wrVpVVlCJVGMMJVdHWSdPSqqRwSQSP"
787 DATA "vCVrpvvGjlphBRmZBhmBhBND"
788 DATA "lqDcZGcSSqSqbDnccSLJgHgLRfnvvJRLmvWJ"
789 DATA "FVCFPChQzVhmsFBgddRgJBfdNfJdfv"
790 DATA "FzCpmTQzjQCThppTSttqDccMTDGcDG"
791 DATA "QCSGBGCrCsMBTCQwMGSfvvLNNnnVLDlNVNDdVdlr"
792 DATA "ZHtPffjWbqgtmnNdvljFnFhdVv"
793 DATA "JRWbmgmRJtmJMGGwSBBRRRfQ"
794 DATA "LqNrCfCQQhtgnPnc"
795 DATA "JWBrWrVlbWgbbtcb"
796 DATA "VwvTBprdrVJVNLNMNNqfqpjN"
797 DATA "bjVqdHrdqVHPsPNbqHbqNdjFGRwRGlttRtMtRtFFGMLHJw"
798 DATA "cfSpZnBZWQBZJlGRJJcwGMGL"
799 DATA "WWBhTMgDTZghVjgjssbrbddd"
800 DATA "*"